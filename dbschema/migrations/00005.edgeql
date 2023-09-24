CREATE MIGRATION m1tophueekkyxiiu4bjhfamhr2qaz6sh7yovvm6dhz6p2l4ixexljq
    ONTO m12lexypq47ae5gyz5phym6kxob2pnk635kcka22oki5qclp6dyxiq
{
  ALTER TYPE default::Apartment {
      DROP LINK Bathroom;
  };
  ALTER TYPE default::Apartment {
      ALTER LINK Bedroom {
          RENAME TO bedroom;
      };
  };
  ALTER TYPE default::Apartment {
      DROP LINK Feature;
  };
  ALTER TYPE default::Apartment {
      DROP LINK Kitchen;
  };
  ALTER TYPE default::Apartment {
      ALTER LINK LivingRoom {
          RENAME TO livingRoom;
      };
  };
  ALTER TYPE default::Apartment {
      CREATE REQUIRED LINK bathroom: default::BathroomData {
          SET REQUIRED USING (<default::BathroomData>{});
      };
  };
  ALTER TYPE default::Place {
      DROP LINK has_reserve;
  };
  ALTER TYPE default::Apartment {
      CREATE REQUIRED LINK kitchen: default::KitchenData {
          SET REQUIRED USING (<default::KitchenData>{});
      };
  };
  ALTER TYPE default::Apartment {
      CREATE REQUIRED LINK place: default::Place {
          SET REQUIRED USING (<default::Place>{});
      };
  };
  ALTER TYPE default::Apartment {
      DROP PROPERTY Bathrooms;
  };
  ALTER TYPE default::Apartment {
      ALTER PROPERTY Bedrooms {
          RENAME TO bedrooms;
      };
  };
  ALTER TYPE default::Apartment {
      ALTER PROPERTY Features {
          RENAME TO livingrooms;
      };
  };
  ALTER TYPE default::Apartment {
      DROP PROPERTY Kitchens;
      DROP PROPERTY Livingrooms;
      DROP PROPERTY TotalArea;
      DROP EXTENDING default::Place;
  };
  ALTER TYPE default::BathroomData {
      ALTER PROPERTY Area {
          RENAME TO area;
      };
  };
  ALTER TYPE default::BathroomData {
      ALTER PROPERTY HairDryer {
          RENAME TO hairDryer;
      };
  };
  ALTER TYPE default::BathroomData {
      ALTER PROPERTY HotWater {
          RENAME TO hotWater;
      };
  };
  ALTER TYPE default::BathroomData {
      DROP PROPERTY NumberOfBathrooms;
      DROP PROPERTY OtherElements;
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY AirConditioner {
          RENAME TO airConditioner;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY Area {
          RENAME TO area;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY Balcony {
          RENAME TO balcony;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY DoublePrivateBathrooms {
          RENAME TO doublePrivateBathrooms;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY Fans {
          RENAME TO fans;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY NumberOfBedrooms {
          RENAME TO numberOfBedrooms;
      };
  };
  ALTER TYPE default::BedroomData {
      DROP PROPERTY OtherItems;
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY SingleBeds {
          RENAME TO singleBeds;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY Wardrobe {
          RENAME TO wardrobe;
      };
  };
  ALTER TYPE default::BedroomData {
      ALTER PROPERTY Workspaces {
          RENAME TO workspaces;
      };
  };
  ALTER TYPE default::FeaturesData {
      DROP PROPERTY Elevator;
      DROP PROPERTY GrabBars;
      DROP PROPERTY OtherItems;
      DROP PROPERTY PetsAllowed;
      DROP PROPERTY PrivateParking;
      DROP PROPERTY Wheelchair;
      DROP PROPERTY Wifi;
  };
  ALTER TYPE default::Room {
      DROP LINK Feature;
  };
  DROP TYPE default::FeaturesData;
  ALTER TYPE default::House {
      ALTER LINK Bathroom {
          RENAME TO bathroom;
      };
  };
  ALTER TYPE default::House {
      ALTER LINK Bedroom {
          RENAME TO bedroom;
      };
  };
  ALTER TYPE default::House {
      DROP LINK HouseDetail;
  };
  ALTER TYPE default::House {
      DROP LINK Kitchen;
  };
  ALTER TYPE default::House {
      ALTER LINK LivingRoom {
          RENAME TO livingRoom;
      };
  };
  ALTER TYPE default::House {
      CREATE REQUIRED LINK kitchen: default::KitchenData {
          SET REQUIRED USING (<default::KitchenData>{});
      };
  };
  ALTER TYPE default::House {
      CREATE REQUIRED LINK place: default::Place {
          SET REQUIRED USING (<default::Place>{});
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY Bathrooms {
          RENAME TO bathrooms;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY Bedrooms {
          RENAME TO bedrooms;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY Floors {
          RENAME TO floors;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY HouseDetails {
          RENAME TO livingrooms;
      };
  };
  ALTER TYPE default::House {
      DROP PROPERTY Kitchens;
      DROP PROPERTY Livingrooms;
      DROP PROPERTY TotalArea;
      DROP EXTENDING default::Place;
  };
  DROP TYPE default::HouseDetailsData;
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY BowlsChopsticksPlatesCups {
          RENAME TO bowlsChopsticksPlatesCups;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY Cooker {
          RENAME TO cooker;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY DishesAndSilverware {
          RENAME TO dishesAndSilverware;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY GasTube {
          RENAME TO gasTube;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY HouseholdGas {
          RENAME TO householdGas;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY Microwave {
          RENAME TO microwave;
      };
  };
  ALTER TYPE default::KitchenData {
      DROP PROPERTY OtherItems;
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY Refrigerator {
          RENAME TO refrigerator;
      };
  };
  ALTER TYPE default::KitchenData {
      ALTER PROPERTY Washer {
          RENAME TO washer;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY AirConditioner {
          RENAME TO airConditioner;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY Balcony {
          RENAME TO balcony;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY DiningTableArea {
          RENAME TO area;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY Fans {
          RENAME TO fans;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY NumberOfLivingRoom {
          RENAME TO numberOfLivingRoom;
      };
  };
  ALTER TYPE default::LivingRoomData {
      DROP PROPERTY OtherElements;
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY SofaBeds {
          RENAME TO sofas;
      };
  };
  ALTER TYPE default::LivingRoomData {
      DROP PROPERTY Sofas;
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY TV {
          RENAME TO tv;
      };
  };
  ALTER TYPE default::LivingRoomData {
      CREATE REQUIRED PROPERTY diningTable: std::decimal {
          SET REQUIRED USING (<std::decimal>{});
      };
  };
  ALTER TYPE default::Place {
      ALTER LINK Landlord {
          RENAME TO landlord;
      };
  };
  ALTER TYPE default::Place {
      CREATE MULTI LINK tenantId: default::User;
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Description {
          RENAME TO description;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Duration {
          RENAME TO location;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Image {
          RENAME TO placeType;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY PlaceType {
          RENAME TO rentalType;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Price {
          RENAME TO price;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Title {
          RENAME TO currency;
      };
  };
  ALTER TYPE default::Place {
      CREATE REQUIRED PROPERTY elevator: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE REQUIRED PROPERTY grabBars: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE PROPERTY images: array<std::str>;
      CREATE REQUIRED PROPERTY isReserved: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      ALTER PROPERTY location {
          SET REQUIRED USING (<std::str>{});
      };
      CREATE REQUIRED PROPERTY petsAllowed: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      ALTER PROPERTY placeType {
          SET REQUIRED USING (<std::str>{});
      };
      CREATE REQUIRED PROPERTY privateParking: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      ALTER PROPERTY rentalType {
          SET REQUIRED USING (<std::str>{});
      };
      CREATE REQUIRED PROPERTY tenants: std::int16 {
          SET REQUIRED USING (<std::int16>{});
      };
      CREATE REQUIRED PROPERTY title: std::str {
          SET REQUIRED USING (<std::str>{});
      };
      CREATE PROPERTY totalArea: std::decimal;
      CREATE REQUIRED PROPERTY wheelChair: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE REQUIRED PROPERTY wifi: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Rating {
      ALTER LINK RatedPlace {
          RENAME TO ratedPlace;
      };
  };
  ALTER TYPE default::Rating {
      ALTER LINK Rater {
          RENAME TO rater;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY CleanlinessRating {
          RENAME TO cleanlinessRating;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY Comment {
          RENAME TO comment;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY CommunicationRating {
          RENAME TO communicationRating;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY Location {
          RENAME TO location;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY RatingDate {
          RENAME TO ratingDate;
      };
  };
  DROP TYPE default::Reserve;
  ALTER TYPE default::Room {
      DROP LINK Bathroom;
  };
  ALTER TYPE default::Room {
      DROP LINK Bedroom;
  };
  ALTER TYPE default::Room {
      DROP LINK Kitchen;
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED LINK kitchen: default::KitchenData {
          SET REQUIRED USING (<default::KitchenData>{});
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED LINK place: default::Place {
          SET REQUIRED USING (<default::Place>{});
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY Bathrooms {
          RENAME TO bathroomArea;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY Bedrooms {
          RENAME TO numberOfBeds;
      };
  };
  ALTER TYPE default::Room {
      DROP PROPERTY Features;
  };
  ALTER TYPE default::Room {
      DROP PROPERTY Kitchens;
  };
  ALTER TYPE default::Room {
      DROP PROPERTY TotalArea;
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY balcony: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY bathroomsIsSahred: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY hasWardrope: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY hasWorkspace: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY tv: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Room DROP EXTENDING default::Place;
  CREATE TYPE default::ShortTerm {
      CREATE REQUIRED LINK place: default::Place;
      CREATE REQUIRED PROPERTY pricePerNight: std::decimal;
      CREATE REQUIRED PROPERTY reserveFrom: std::datetime;
      CREATE REQUIRED PROPERTY reserveTo: std::datetime;
  };
  ALTER TYPE default::User {
      ALTER PROPERTY Email {
          RENAME TO Password;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY FirstName {
          RENAME TO email;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY LastName {
          RENAME TO firstName;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY UserType {
          RENAME TO lastName;
      };
  };
  ALTER TYPE default::User {
      CREATE REQUIRED PROPERTY hasPets: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE REQUIRED PROPERTY isSmooker: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE REQUIRED PROPERTY userType: std::str {
          SET REQUIRED USING (<std::str>{});
      };
  };
};
