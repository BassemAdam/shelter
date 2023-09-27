CREATE MIGRATION m1tbj7sfhl725vbflvhiszlbyvkof22jg5vma4h3fqk5xyuefhodba
    ONTO initial
{
  CREATE TYPE default::Booking {
      CREATE PROPERTY BookingDate: std::datetime;
      CREATE REQUIRED PROPERTY BookingEndDate: std::datetime;
      CREATE REQUIRED PROPERTY BookingStartDate: std::datetime;
      CREATE PROPERTY BookingStatus: std::str;
      CREATE PROPERTY CheckInDate: std::datetime;
      CREATE PROPERTY CheckOutDate: std::datetime;
      CREATE PROPERTY Currency: std::str;
      CREATE PROPERTY PaymentMethod: std::str;
      CREATE PROPERTY PaymentStatus: std::str;
      CREATE REQUIRED PROPERTY TotalAmount: std::decimal;
  };
  CREATE TYPE default::User {
      CREATE PROPERTY Address: std::str;
      CREATE PROPERTY Bio: std::str;
      CREATE PROPERTY City: std::str;
      CREATE PROPERTY Country: std::str;
      CREATE PROPERTY DateOfBirth: std::datetime;
      CREATE REQUIRED PROPERTY Email: std::str;
      CREATE REQUIRED PROPERTY FirstName: std::str;
      CREATE PROPERTY Gender: std::str;
      CREATE PROPERTY IsActive: std::bool;
      CREATE PROPERTY LastLogin: std::datetime;
      CREATE REQUIRED PROPERTY LastName: std::str;
      CREATE PROPERTY Phone: std::str;
      CREATE PROPERTY ProfilePicture: std::str;
      CREATE PROPERTY RegistrationDate: std::datetime;
      CREATE PROPERTY State: std::str;
      CREATE REQUIRED PROPERTY UserType: std::str;
      CREATE PROPERTY ZipCode: std::str;
  };
  ALTER TYPE default::Booking {
      CREATE REQUIRED LINK Lessor: default::User;
      CREATE REQUIRED LINK Tenant: default::User;
  };
  CREATE TYPE default::Property {
      CREATE MULTI LINK has_bookings: default::Booking;
      CREATE REQUIRED LINK Lessor: default::User;
      CREATE PROPERTY Address: std::str;
      CREATE PROPERTY Amenities: array<std::str>;
      CREATE PROPERTY Area: std::decimal;
      CREATE PROPERTY AvailableFrom: std::datetime;
      CREATE PROPERTY AvailableTo: std::datetime;
      CREATE PROPERTY Bathrooms: std::decimal;
      CREATE PROPERTY Bedrooms: std::int16;
      CREATE PROPERTY City: std::str;
      CREATE PROPERTY Country: std::str;
      CREATE REQUIRED PROPERTY Currency: std::str;
      CREATE PROPERTY Description: std::str;
      CREATE PROPERTY Furnished: std::bool;
      CREATE PROPERTY IsAvailable: std::bool;
      CREATE PROPERTY MainImage: std::str;
      CREATE REQUIRED PROPERTY Price: std::decimal;
      CREATE PROPERTY PropertyType: std::str;
      CREATE PROPERTY State: std::str;
      CREATE REQUIRED PROPERTY Title: std::str;
  };
  ALTER TYPE default::User {
      CREATE MULTI LINK owns_properties: default::Property;
  };
};
