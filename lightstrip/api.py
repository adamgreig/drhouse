from flask import Flask, request, render_template
from lightstrip.control import LightstripControl

app = Flask(__name__)
lightstrip = LightstripControl("/dev/ttyACM0", 115200)


@app.route("/set", methods=["POST"])
def set():
    """Set the lightstrip colour. Each component is 0 to 100."""
    red = int(request.form["red"])
    blue = int(request.form["blue"])
    green = int(request.form["green"])
    lightstrip.set_colour(red, blue, green)
    return "OK"


@app.route("/")
def index():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0")
