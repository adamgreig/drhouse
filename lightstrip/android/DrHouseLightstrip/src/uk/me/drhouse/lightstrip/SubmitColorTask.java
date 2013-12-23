package uk.me.drhouse.lightstrip;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import android.os.AsyncTask;
import android.graphics.Color;


public class SubmitColorTask extends AsyncTask<Integer, Void, Void> {

	@Override
	protected Void doInBackground(Integer... colors) {
		HttpClient httpClient = new DefaultHttpClient();
		HttpPost httpPost = new HttpPost("http://192.168.2.5:5000/set");
		List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);
		
		int red = Color.red(colors[0]);
		int green = Color.green(colors[0]);
		int blue = Color.blue(colors[0]);
		
        nameValuePairs.add(new BasicNameValuePair("red", Integer.toString(red)));
        nameValuePairs.add(new BasicNameValuePair("green", Integer.toString(green)));
        nameValuePairs.add(new BasicNameValuePair("blue", Integer.toString(blue)));
        
		try {
	        httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs));
		    httpClient.execute(httpPost);
		} catch (ClientProtocolException e) {
		} catch (IOException e) {
		}
		return null;
	}

}
