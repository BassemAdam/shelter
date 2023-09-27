CREATE MIGRATION m144ck33s3kalprnyl6mrj3dlesfz7p7daumrcjcyjahg3bwdoyiha
    ONTO m1tbj7sfhl725vbflvhiszlbyvkof22jg5vma4h3fqk5xyuefhodba
{
  ALTER TYPE default::Booking {
      ALTER LINK Lessor {
          RENAME TO Landlord;
      };
  };
  ALTER TYPE default::Booking {
      DROP PROPERTY CheckInDate;
  };
  ALTER TYPE default::Booking {
      DROP PROPERTY CheckOutDate;
  };
  ALTER TYPE default::Booking {
      DROP PROPERTY PaymentMethod;
  };
  ALTER TYPE default::Booking {
      DROP PROPERTY PaymentStatus;
  };
  ALTER TYPE default::Booking RENAME TO default::Reserve;
  ALTER TYPE default::Property {
      DROP PROPERTY Amenities;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY Area;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY AvailableFrom;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY AvailableTo;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY Bathrooms;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY Bedrooms;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY Furnished;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY IsAvailable;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY MainImage;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY PropertyType;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY State;
  };
  ALTER TYPE default::Property {
      DROP PROPERTY Title;
  };
  ALTER TYPE default::Property RENAME TO default::Place;
  ALTER TYPE default::Place {
      ALTER LINK has_bookings {
          RENAME TO has_reserve;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Address {
          RENAME TO Duration;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY City {
          RENAME TO Image;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Country {
          RENAME TO PlaceType;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY Currency {
          RENAME TO Title;
      };
  };
  CREATE TYPE default::Rating {
      CREATE REQUIRED LINK RatedPlace: default::Place;
      CREATE REQUIRED LINK Rater: default::User;
      CREATE REQUIRED PROPERTY CleanlinessRating: std::int16;
      CREATE REQUIRED PROPERTY Comment: std::str;
      CREATE REQUIRED PROPERTY CommunicationRating: std::int16;
      CREATE REQUIRED PROPERTY Location: std::int16;
      CREATE PROPERTY RatingDate: std::datetime;
  };
  ALTER TYPE default::Reserve {
      ALTER LINK Tenant {
          RENAME TO Lessor;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER PROPERTY BookingDate {
          RENAME TO ReserveDate;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER PROPERTY BookingEndDate {
          RENAME TO CheckInDate;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER PROPERTY BookingStartDate {
          RENAME TO CheckOutDate;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER PROPERTY BookingStatus {
          RENAME TO PaymentMethod;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER PROPERTY Currency {
          RENAME TO PaymentStatus;
      };
  };
  ALTER TYPE default::User {
      DROP PROPERTY Address;
      DROP PROPERTY Bio;
      DROP PROPERTY City;
      DROP PROPERTY Country;
      DROP PROPERTY DateOfBirth;
      DROP PROPERTY IsActive;
      DROP PROPERTY LastLogin;
      DROP PROPERTY ProfilePicture;
      DROP PROPERTY RegistrationDate;
      DROP PROPERTY State;
      DROP PROPERTY ZipCode;
  };
};
