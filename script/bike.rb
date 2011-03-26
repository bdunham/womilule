require 'rubygems'
require 'couch_object'
require 'fastercsv'

db = CouchObject::Database.open("http://localhost:5984/womilule")

FasterCSV.foreach("bikestands.csv") do |row|
  doc = CouchObject::Document.new({ "title" => row[0],
                                    "dataset" => "Travel/Bike Stands",
                                    "location" => [row[2],row[3]],
                                    "street" => row[0],
                                    "village" => row[1],
                                    "stands" => row[4]  })
  doc.save(db)
end