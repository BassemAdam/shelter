CREATE MIGRATION m1ajswlmysr7ysiqrlejeczj2vo7n3dqj6seciarzsw6vusfixwgia
    ONTO m1zwuaep2ohsszzhykdlbjesqcvxtjttwp3nrsy5bwggoada32l65q
{
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY airConditioner {
          RENAME TO air_conditioner;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY numberOfLivingRoom {
          RENAME TO number_of_livingroom;
      };
  };
  ALTER TYPE default::LivingRoomData {
      ALTER PROPERTY sofas {
          RENAME TO number_of_sofas;
      };
  };
  ALTER TYPE default::LivingRoomData {
      DROP PROPERTY area;
  };
  ALTER TYPE default::LivingRoomData {
      DROP PROPERTY diningTable;
  };
  ALTER TYPE default::LivingRoomData RENAME TO default::Livingroom;
  ALTER TYPE default::Apartment {
      ALTER LINK livingRoom {
          RENAME TO living_room;
      };
  };
  ALTER TYPE default::Apartment {
      ALTER PROPERTY bedrooms {
          RENAME TO number_of_bedrooms;
      };
  };
  ALTER TYPE default::Apartment {
      ALTER PROPERTY livingrooms {
          RENAME TO number_of_livingrooms;
      };
  };
  ALTER TYPE default::BathroomData RENAME TO default::Bathroom;
  ALTER TYPE default::Bathroom {
      ALTER PROPERTY hairDryer {
          RENAME TO hot_water;
      };
  };
  ALTER TYPE default::Bathroom {
      ALTER PROPERTY hotWater {
          RENAME TO is_shared;
      };
  };
  ALTER TYPE default::Bathroom {
      CREATE REQUIRED PROPERTY washing_machine: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::BedroomData {
      DROP PROPERTY workspaces;
  };
  ALTER TYPE default::BedroomData RENAME TO default::Bedroom;
  ALTER TYPE default::Bedroom {
      ALTER PROPERTY airConditioner {
          RENAME TO air_conditioner;
      };
  };
  ALTER TYPE default::Bedroom {
      ALTER PROPERTY doublePrivateBathrooms {
          RENAME TO number_of_beds;
      };
  };
  ALTER TYPE default::Bedroom {
      CREATE REQUIRED PROPERTY has_private_bathroom: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::Bedroom {
      ALTER PROPERTY numberOfBedrooms {
          RENAME TO number_of_single_beds;
      };
  };
  ALTER TYPE default::Bedroom {
      ALTER PROPERTY singleBeds {
          RENAME TO workspaces;
      };
  };
  ALTER TYPE default::House {
      ALTER LINK livingRoom {
          RENAME TO number_of_livingrooms;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY bathrooms {
          RENAME TO number_of_bathrooms;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY bedrooms {
          RENAME TO number_of_bedrooms;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY floors {
          RENAME TO number_of_floors;
      };
  };
  ALTER TYPE default::House {
      ALTER PROPERTY livingrooms {
          RENAME TO number_of_livingroom;
      };
  };
  ALTER TYPE default::KitchenData RENAME TO default::Kitchen;
  ALTER TYPE default::Kitchen {
      ALTER PROPERTY bowlsChopsticksPlatesCups {
          RENAME TO dshes_and_silverware;
      };
  };
  ALTER TYPE default::Kitchen {
      ALTER PROPERTY dishesAndSilverware {
          RENAME TO gas_tube;
      };
  };
  ALTER TYPE default::Kitchen {
      ALTER PROPERTY gasTube {
          RENAME TO household_gas;
      };
  };
  ALTER TYPE default::Kitchen {
      ALTER PROPERTY householdGas {
          RENAME TO water_kettle;
      };
  };
  ALTER TYPE default::Kitchen {
      CREATE REQUIRED PROPERTY kitchen_area: std::decimal {
          SET REQUIRED USING (<std::decimal>{});
      };
  };
  ALTER TYPE default::LongTerm {
      ALTER PROPERTY pricePerMonth {
          RENAME TO price_per_month;
      };
  };
  ALTER TYPE default::LongTerm {
      ALTER PROPERTY pricePerYear {
          RENAME TO price_per_year;
      };
  };
  ALTER TYPE default::Place {
      ALTER LINK tenantId {
          RENAME TO tenant_id;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY grabBars {
          RENAME TO grab_bars;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY isReserved {
          RENAME TO is_reserved;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY location {
          RENAME TO city;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY petsAllowed {
          RENAME TO pets_allowed;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY placeType {
          RENAME TO governrate;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY privateParking {
          RENAME TO private_parking;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY rentalType {
          RENAME TO place_type;
      };
  };
  ALTER TYPE default::Place {
      CREATE REQUIRED PROPERTY rental_type: std::str {
          SET REQUIRED USING (<std::str>{});
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY totalArea {
          RENAME TO total_area;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY wheelChair {
          RENAME TO wheelchair;
      };
  };
  ALTER TYPE default::Rating {
      ALTER LINK ratedPlace {
          RENAME TO rated_place;
      };
  };
  ALTER TYPE default::Rating {
      ALTER LINK rater {
          RENAME TO reviewer;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY cleanlinessRating {
          RENAME TO cleanliness_rating;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY communicationRating {
          RENAME TO communication_rating;
      };
  };
  ALTER TYPE default::Rating {
      ALTER PROPERTY ratingDate {
          RENAME TO rating_date;
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED LINK bathroom: default::Bathroom {
          SET REQUIRED USING (<default::Bathroom>{});
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY bathroomArea {
          RENAME TO room_area;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY bathroomsIsSahred {
          RENAME TO has_air_conditioner;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY hasWardrope {
          RENAME TO has_wardrope;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY hasWorkspace {
          RENAME TO has_workspace;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY numberOfBeds {
          RENAME TO number_of_beds;
      };
  };
  ALTER TYPE default::Room {
      CREATE REQUIRED PROPERTY sahred_bathroom: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
  };
  ALTER TYPE default::ShortTerm {
      ALTER PROPERTY pricePerNight {
          RENAME TO price_per_night;
      };
  };
  ALTER TYPE default::ShortTerm {
      ALTER PROPERTY reserveFrom {
          RENAME TO reserve_from;
      };
  };
  ALTER TYPE default::ShortTerm {
      ALTER PROPERTY reserveTo {
          RENAME TO reserve_to;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY firstName {
          RENAME TO first_name;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY hasPets {
          RENAME TO has_pets;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY isSmooker {
          RENAME TO is_smoker;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY lastName {
          RENAME TO last_name;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY petsType {
          RENAME TO pets_type;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY userType {
          RENAME TO user_type;
      };
  };
};
