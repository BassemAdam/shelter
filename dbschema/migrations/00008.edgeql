CREATE MIGRATION m1zwuaep2ohsszzhykdlbjesqcvxtjttwp3nrsy5bwggoada32l65q
    ONTO m1wtvdau3brny2gza4lwfdf3p2aei2tblwr3oavlsyikds6oabi4rq
{
  CREATE TYPE default::LongTerm {
      CREATE REQUIRED LINK place: default::Place;
      CREATE REQUIRED PROPERTY currency: std::str;
      CREATE REQUIRED PROPERTY pricePerMonth: std::decimal;
      CREATE REQUIRED PROPERTY pricePerYear: std::decimal;
  };
  ALTER TYPE default::Place {
      DROP PROPERTY currency;
  };
  ALTER TYPE default::ShortTerm {
      CREATE REQUIRED PROPERTY currency: std::str {
          SET REQUIRED USING (<std::str>{});
      };
  };
};
