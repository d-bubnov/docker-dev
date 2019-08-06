FROM mongo

COPY Product.json /Product.json

CMD mongoimport --host mongo --db ng8crud --collection Product --drop --file /Product.json --jsonArray
