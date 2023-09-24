CREATE MIGRATION m1fjkk7zuzmt6u3qo2qmfmrcrpuwy74htf2qss2j7r6yemwgccniea
    ONTO m144ck33s3kalprnyl6mrj3dlesfz7p7daumrcjcyjahg3bwdoyiha
{
  CREATE TYPE default::BathroomData {
      CREATE REQUIRED PROPERTY Area: std::decimal;
      CREATE REQUIRED PROPERTY HairDryer: std::bool;
      CREATE REQUIRED PROPERTY HotWater: std::bool;
      CREATE REQUIRED PROPERTY NumberOfBathrooms: std::int16;
      CREATE PROPERTY OtherElements: array<std::str>;
  };
  CREATE TYPE default::BedroomData {
      CREATE REQUIRED PROPERTY AirConditioner: std::bool;
      CREATE REQUIRED PROPERTY Area: std::decimal;
      CREATE REQUIRED PROPERTY Balcony: std::bool;
      CREATE REQUIRED PROPERTY DoublePrivateBathrooms: std::int16;
      CREATE REQUIRED PROPERTY Fans: std::bool;
      CREATE REQUIRED PROPERTY NumberOfBedrooms: std::int16;
      CREATE PROPERTY OtherItems: array<std::str>;
      CREATE REQUIRED PROPERTY SingleBeds: std::int16;
      CREATE REQUIRED PROPERTY Wardrobe: std::bool;
      CREATE REQUIRED PROPERTY Workspaces: std::int16;
  };
  CREATE TYPE default::FeaturesData {
      CREATE REQUIRED PROPERTY Elevator: std::bool;
      CREATE REQUIRED PROPERTY GrabBars: std::bool;
      CREATE PROPERTY OtherItems: array<std::str>;
      CREATE REQUIRED PROPERTY PetsAllowed: std::bool;
      CREATE REQUIRED PROPERTY PrivateParking: std::bool;
      CREATE REQUIRED PROPERTY Wheelchair: std::bool;
      CREATE REQUIRED PROPERTY Wifi: std::bool;
  };
  CREATE TYPE default::KitchenData {
      CREATE REQUIRED PROPERTY BowlsChopsticksPlatesCups: std::bool;
      CREATE REQUIRED PROPERTY Cooker: std::bool;
      CREATE REQUIRED PROPERTY DishesAndSilverware: std::bool;
      CREATE REQUIRED PROPERTY GasTube: std::bool;
      CREATE REQUIRED PROPERTY HouseholdGas: std::bool;
      CREATE REQUIRED PROPERTY Microwave: std::bool;
      CREATE PROPERTY OtherItems: array<std::str>;
      CREATE REQUIRED PROPERTY Refrigerator: std::bool;
      CREATE REQUIRED PROPERTY Washer: std::bool;
  };
  CREATE TYPE default::LivingRoomData {
      CREATE REQUIRED PROPERTY AirConditioner: std::bool;
      CREATE REQUIRED PROPERTY Balcony: std::bool;
      CREATE REQUIRED PROPERTY DiningTableArea: std::decimal;
      CREATE REQUIRED PROPERTY Fans: std::bool;
      CREATE REQUIRED PROPERTY NumberOfLivingRoom: std::int16;
      CREATE PROPERTY OtherElements: array<std::str>;
      CREATE REQUIRED PROPERTY SofaBeds: std::int16;
      CREATE REQUIRED PROPERTY Sofas: std::int16;
      CREATE REQUIRED PROPERTY TV: std::bool;
  };
  CREATE TYPE default::Apartment EXTENDING default::Place {
      CREATE MULTI LINK Bathroom: default::BathroomData;
      CREATE MULTI LINK Bedroom: default::BedroomData;
      CREATE MULTI LINK Feature: default::FeaturesData;
      CREATE MULTI LINK Kitchen: default::KitchenData;
      CREATE MULTI LINK LivingRoom: default::LivingRoomData;
      CREATE REQUIRED PROPERTY Bathrooms: std::decimal;
      CREATE REQUIRED PROPERTY Bedrooms: std::int16;
      CREATE REQUIRED PROPERTY Features: std::int16;
      CREATE REQUIRED PROPERTY Kitchens: std::int16;
      CREATE REQUIRED PROPERTY Livingrooms: std::int16;
      CREATE REQUIRED PROPERTY TotalArea: std::decimal;
  };
  CREATE TYPE default::HouseDetailsData {
      CREATE REQUIRED PROPERTY Garden: std::bool;
      CREATE REQUIRED PROPERTY GrabBars: std::bool;
      CREATE PROPERTY OtherElements: array<std::str>;
      CREATE REQUIRED PROPERTY PrivateParking: std::bool;
      CREATE REQUIRED PROPERTY Roof: std::bool;
      CREATE REQUIRED PROPERTY TotalArea: std::decimal;
      CREATE REQUIRED PROPERTY Wheelchair: std::bool;
      CREATE REQUIRED PROPERTY Wifi: std::bool;
  };
  CREATE TYPE default::House EXTENDING default::Place {
      CREATE MULTI LINK Bathroom: default::BathroomData;
      CREATE MULTI LINK Bedroom: default::BedroomData;
      CREATE MULTI LINK HouseDetail: default::HouseDetailsData;
      CREATE MULTI LINK Kitchen: default::KitchenData;
      CREATE MULTI LINK LivingRoom: default::LivingRoomData;
      CREATE REQUIRED PROPERTY Bathrooms: std::int16;
      CREATE REQUIRED PROPERTY Bedrooms: std::int16;
      CREATE REQUIRED PROPERTY Floors: std::int16;
      CREATE REQUIRED PROPERTY HouseDetails: std::int16;
      CREATE REQUIRED PROPERTY Kitchens: std::int16;
      CREATE REQUIRED PROPERTY Livingrooms: std::int16;
      CREATE REQUIRED PROPERTY TotalArea: std::decimal;
  };
  CREATE TYPE default::Room EXTENDING default::Place {
      CREATE MULTI LINK Bathroom: default::BathroomData;
      CREATE MULTI LINK Bedroom: default::BedroomData;
      CREATE MULTI LINK Feature: default::FeaturesData;
      CREATE MULTI LINK Kitchen: default::KitchenData;
      CREATE REQUIRED PROPERTY Bathrooms: std::decimal;
      CREATE REQUIRED PROPERTY Bedrooms: std::int16;
      CREATE REQUIRED PROPERTY Features: std::int16;
      CREATE REQUIRED PROPERTY Kitchens: std::int16;
      CREATE REQUIRED PROPERTY TotalArea: std::decimal;
  };
};
