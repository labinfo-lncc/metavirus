from flask import Flask
from flask_cors import CORS
import psycopg2
import pandas.io.sql as pdsql

api = Flask (__name__)
CORS(api)

@api.route ("/metavirus/taxid/<virusname>")
def get_taxid (virusname):
    conn = psycopg2.connect ("host=localhost dbname=mata_off_sabia user=postgres password=lncc2019")
    tab = pdsql.read_sql(f"""select virus_tax_id, virus_name from load_metavirus.virushost where virus_name ilike '%{virusname}%'""", conn)

    jtab = tab.to_json (orient='records')
 
    return jtab

if __name__ == "__main__":
    api.run (debug=True, host="146.134.76.35")

