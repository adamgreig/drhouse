#include <stdio.h>
#include <fcntl.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <netinet/in.h>


#define UDP_IP          INADDR_ANY
#define UDP_PORT        7878
#define LORAINE_PORT    "/dev/ttyACM0"
#define BUF_SIZE        1024


int main(int argc, char** argv) {
    int sock, node, n, i;
    char msg_in[BUF_SIZE], msg_out[BUF_SIZE * 2];
    struct sockaddr_in server_addr;

    if((node = open(LORAINE_PORT, O_WRONLY | O_SYNC)) < 0) {
        perror("Cannot open Loraine node");
        return -1;
    }

    if((sock = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        perror("Cannot create UDP socket");
        return -1;
    }

    memset((char*)&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family      = AF_INET;
    server_addr.sin_addr.s_addr = htonl(UDP_IP);
    server_addr.sin_port        = htons(UDP_PORT);

    if(bind(sock, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        perror("Cannot bind UDP socket");
        return -1;
    }

    for(;;) {
        n = recv(sock, msg_in, BUF_SIZE, 0);
        for(i=0; i<n/2; i++) {
            msg_out[i * 4 + 0] = 0x02;
            msg_out[i * 4 + 1] = msg_in[i * 2 + 0];
            msg_out[i * 4 + 2] = msg_in[i * 2 + 1];
            msg_out[i * 4 + 3] = 0x03;
            n = write(node, &msg_out, n*2);
        }
    }

    return 0;
}
