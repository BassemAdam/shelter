CREATE MIGRATION m1wtvdau3brny2gza4lwfdf3p2aei2tblwr3oavlsyikds6oabi4rq
    ONTO m17ly2ybyrtob5t4v3rsumcmfjmj4lthxjuo5pgf24wpxnhd72fp5q
{
  ALTER TYPE default::User {
      CREATE PROPERTY petsType: std::str;
  };
};
