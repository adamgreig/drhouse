from flask import Flask, request, render_template
from lightstrip.control import LightstripControl

app = Flask(__name__)
lightstrip = LightstripControl("/dev/ttyACM0", 115200)


@app.route("/set", methods=["POST"])
def set():
    """Set the lightstrip colour. Each component is 0 to 255."""
    red = int(request.form["red"])
    green = int(request.form["green"])
    blue = int(request.form["blue"])
    lightstrip.set_colour(red, green, blue)
    return "OK"


@app.route("/")
def index():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0")
