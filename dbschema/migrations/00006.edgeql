CREATE MIGRATION m17ly2ybyrtob5t4v3rsumcmfjmj4lthxjuo5pgf24wpxnhd72fp5q
    ONTO m1tophueekkyxiiu4bjhfamhr2qaz6sh7yovvm6dhz6p2l4ixexljq
{
  ALTER TYPE default::User {
      ALTER PROPERTY Gender {
          RENAME TO gender;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY Password {
          RENAME TO password;
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY Phone {
          RENAME TO phone;
      };
  };
};
