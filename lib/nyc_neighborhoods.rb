require_relative "nyc_neighborhoods/version"
require 'json'

module NycNeighborhoods
  class Error < StandardError; end
  DATA = [{"neighborhood": "Central Bronx", "zip_codes": ["10453", "10457", "10460"]},
   {"neighborhood": "Central Bronx", "zip_codes": ["10453", "10457", "10460"]},
   {"neighborhood": "Bronx Park and Fordham", "zip_codes": ["10458", "10467", "10468"]},
   {"neighborhood": "High Bridge and Morrisania", "zip_codes": ["10451", "10452", "10456"]},
   {"neighborhood": "Hunts Point and Mott Haven", "zip_codes": ["10454", "10455", "10459", "10474"]},
   {"neighborhood": "Kingsbridge and Riverdale", "zip_codes": ["10463", "10471"]},
   {"neighborhood": "Northeast Bronx", "zip_codes": ["10466", "10469", "10470", "10475"]},
   {"neighborhood": "Southeast Bronx", "zip_codes": ["10461", "1046210464", "10465", "10472", "10473"]},
   {"neighborhood": "Central Brooklyn", "zip_codes": ["11212", "11213", "11216", "11233", "11238"]},
   {"neighborhood": "Southwest Brooklyn", "zip_codes": ["11209", "11214", "11228"]},
   {"neighborhood": "Borough Park", "zip_codes": ["11204", "11218", "11219", "11230"]},
   {"neighborhood": "Canarsie and Flatlands", "zip_codes": ["11234", "11236", "11239"]},
   {"neighborhood": "Southern Brooklyn", "zip_codes": ["11223", "11224", "11229", "11235"]},
   {"neighborhood": "Northwest Brooklyn", "zip_codes": ["11201", "11205", "11215", "11217", "11231"]},
   {"neighborhood": "Flatbush", "zip_codes": ["11203", "11210", "11225", "11226"]},
   {"neighborhood": "East New York and New Lots", "zip_codes": ["11207", "11208"]},
   {"neighborhood": "Greenpoint", "zip_codes": ["11211", "11222"]},
   {"neighborhood": "Sunset Park", "zip_codes": ["11220", "11232"]},
   {"neighborhood": "Bushwick and Williamsburg", "zip_codes": ["11206", "11221", "11237"]},
   {"neighborhood": "Central Harlem", "zip_codes": ["10026", "10027", "10030", "10037", "10039"]},
   {"neighborhood": "Chelsea and Clinton", "zip_codes": ["10001", "10011", "10018", "10019", "10020", "10036"]},
   {"neighborhood": "East Harlem", "zip_codes": ["10029", "10035"]},
   {"neighborhood": "Gramercy Park and Murray Hill", "zip_codes": ["10010", "10016", "10017", "10022"]},
   {"neighborhood": "Greenwich Village and Soho", "zip_codes": ["10012", "10013", "10014"]},
   {"neighborhood": "Lower Manhattan", "zip_codes": ["10004", "10005", "10006", "10007", "10038", "10280"]},
   {"neighborhood": "Lower East Side", "zip_codes": ["10002", "10003", "10009"]},
   {"neighborhood": "Upper East Side", "zip_codes": ["10021", "10028", "10044", "10065", "10075", "10128"]},
   {"neighborhood": "Upper West Side", "zip_codes": ["10023", "10024", "10025"]},
   {"neighborhood": "Inwood and Washington Heights", "zip_codes": ["10031", "10032", "10033", "10034", "10040"]},
   {"neighborhood": "Northeast Queens", "zip_codes": ["11361", "11362", "11363", "11364"]},
   {"neighborhood": "North Queens", "zip_codes": ["11354", "11355", "11356", "11357", "11358", "11359", "11360"]},
   {"neighborhood": "Central Queens", "zip_codes": ["11365", "11366", "11367"]},
   {"neighborhood": "Jamaica", "zip_codes": ["11412", "11423", "11432", "11433", "11434", "11435", "11436"]},
   {"neighborhood": "Northwest Queens", "zip_codes": ["11101", "11102", "11103", "11104", "11105", "11106"]},
   {"neighborhood": "West Central Queens", "zip_codes": ["11374", "11375", "11379", "11385"]},
   {"neighborhood": "Rockaways", "zip_codes": ["11691", "11692", "11693", "11694", "11695", "11697"]},
   {"neighborhood": "Southeast Queens", "zip_codes": ["11004", "11005", "11411", "11413", "11422", "11426", "11427", "11428", "11429"]},
   {"neighborhood": "Southwest Queens", "zip_codes": ["11414", "11415", "11416", "11417", "11418", "11419", "11420", "11421"]},
   {"neighborhood": "West Queens", "zip_codes": ["11368", "11369", "11370", "11372", "11373", "11377", "11378"]},
   {"neighborhood": "Port Richmond", "zip_codes": ["10302", "10303", "10310"]},
   {"neighborhood": "South Shore", "zip_codes": ["10306", "10307", "10308", "10309", "10312"]},
   {"neighborhood": "Stapleton and St. George", "zip_codes": ["10301", "10304", "10305"]},
   {"neighborhood": "Mid-Island", "zip_codes": ["10314"]}]

  # Returns Neighborhood name from Zip Code input
  def self.neighborhood(zip_code)
    zip_code = zip_code.to_s
    DATA.each do |hood_hash|
      return hood_hash[:neighborhood] if hood_hash[:zip_codes].include?(zip_code)
    end
    nil
  end
end
