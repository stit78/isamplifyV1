# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

COUNTRIES = ["Brazil", "Argentina", "Perou", "Chile", "Ecuador", "Paraguay", "Uruguay", "Colombia", "Venezuela", "Bolivia", "Suriname", "Guyana"]
PREFIXES = ["Br", "Ar", "Pe", "Ch", "Ec", "Pa", "Ur", "Co", "Ve", "Bo", "Su", "Gu"]
STAGE = ["Offer Sample", "Loading Sample", "Port Sample", "Warehouse Sample"]
DATA = {
  client: [
    {
    name: "Auchan",
    address: "1 rue de la Centrale, Villeneuve d'Ascq, France"
    },
    {
    name: "Nestlé",
    address: "55 Avenue Nestlé, Vevey, Suisse"
    },
    {
    name: "Starbucks",
    address: "2401 Utah Avenue South, Seattle, Washington, USA",
    },
    {
    name: "McDonald's",
    address: "110 N Carpenter St, Chicago, IL 60607, États-Unis"
    },
    {
    name: "Café Richard",
    address: "106 Rue du Fossé Blanc, 92230 Gennevilliers"
    }],
  trader: [
    {
    name: "Eqom",
    address: "15 Rue de Sambre-et-Meuse, 75010 Paris"
    },
    {
    name: "LDC"
    address: "Zuidplein 208, 1077 XV Amsterdam, Pays-Bas"
    }],
  exporter: [
    {
    name: "Carlos company",
    address: "36 callee del cocoa, Bogota, Colombia"
    },
    {
    name: "Manuela company"
    address: "15 via de la cantadora, Rio de Janeiro, Brazil"
    }],
  ]
  }

}
CLIENTS = ["Auchan", "Nestlé", "Starbucks", "McDonald", "Café Richard"]
ADDRESS_CLIENT = [, "55 Avenue Nestlé, Vevey, Suisse", "2401 Utah Avenue South, Seattle, Washington, USA", "110 N Carpenter St, Chicago, IL 60607, États-Unis", "106 Rue du Fossé Blanc, 92230 Gennevilliers"]


puts "Destroying instances"
  NestedElement.destroy_all
  SamplesElement.destroy_all
  Etiquette.destroy_all
  Container.destroy_all
  PotentialClient.destroy_all
  Sample.destroy_all
  Element.destroy_all
  Unit.destroy_all
  Right.destroy_all
  User.destroy_all
  CompanyName.destroy_all
  Provenance.destroy_all
puts "--> All instances destroyed"

puts "Creating new instance"
puts ""
# puts "   Creating Provenance"
#   COUNTRIES.each_with_index do |country, index|
#     provenance = Provenance.new(name: country, prefixe: PREFIXES[index])
#     provenance.save
#   end
# puts "   -->Provenances created"
# puts ""
# puts "      Creating new clients"
#   CLIENTS.each_with_index do |client, index|
#     company = CompanyName.new(name: client, address: ADDRESS_CLIENT[index], provenance: Provenance.all.sample)
#     company.save
#   end
# puts "      Creating 2 traders"
#   louis =


# puts "      -->Companies created"


