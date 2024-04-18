from flask import Flask
from flask import render_template
from flask_sqlalchemy import SQLAlchemy
#from sqlalchemy import create_engine
#from sqlalchemy import text


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///identifier.sqlite'
db = SQLAlchemy(app)


class Dialekte(db.Model):
    id_dial = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(1000))

    def __init__(self, id_dial, name):
        self.id_dial = id_dial
        self.name = name


class Hochdeutsch(db.Model):
    id_dial = db.Column(db.Integer, db.ForeignKey('Dialekte.id_dial'))
    id_wort = db.Column(db.Integer, primary_key=True)
    das_wort = db.Column(db.String(1000))

    def __init__(self, id_dial, id_wort, das_wort):
        self.id_dial = id_dial
        self.id_wort = id_wort
        self.das_wort = das_wort


class DDR(db.Model):
    id_dial = db.Column(db.Integer, db.ForeignKey('Dialekte.id_dial'))
    id_wort = db.Column(db.Integer, primary_key=True)
    das_wort_dial = db.Column(db.String(1000))
    hochdeutsch_wort = db.Column(db.Integer, db.ForeignKey('Hochdeutsch.id_wort'))

    def __init__(self, id_dial, id_wort, das_wort_dial, hochdeutsch_wort):
        self.id_dial = id_dial
        self.id_wort = id_wort
        self.das_wort_dial = das_wort_dial
        self.hochdeutsch_wort = hochdeutsch_wort


class Osterreichisch(db.Model):
    id_dial = db.Column(db.Integer, db.ForeignKey('Dialekte.id_dial'))
    id_wort = db.Column(db.Integer, primary_key=True)
    das_wort_dial = db.Column(db.String(1000))
    hochdeutsch_wort = db.Column(db.Integer, db.ForeignKey('Hochdeutsch.id_wort'))

    def __init__(self, id_dial, id_wort, das_wort_dial, hochdeutsch_wort):
        self.id_dial = id_dial
        self.id_wort = id_wort
        self.das_wort_dial = das_wort_dial
        self.hochdeutsch_wort = hochdeutsch_wort


@app.route('/')
def woerterbuch():
    return render_template("Baerendreck.html")


@app.route('/DDR', methods=['GET', 'POST'])
def ddr():
    return render_template("Woerterbuch.html", items=DDR.query.all())


@app.route('/OE', methods=['GET', 'POST'])
def oe():
    return render_template("Woerterbuch.html", items=Osterreichisch.query.all())


if __name__ == '__main__':
    app.run()
