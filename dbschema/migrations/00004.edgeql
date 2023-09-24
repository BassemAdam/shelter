CREATE MIGRATION m12lexypq47ae5gyz5phym6kxob2pnk635kcka22oki5qclp6dyxiq
    ONTO m1fjkk7zuzmt6u3qo2qmfmrcrpuwy74htf2qss2j7r6yemwgccniea
{
  ALTER TYPE default::Place {
      ALTER LINK Lessor {
          RENAME TO Landlord;
      };
  };
  ALTER TYPE default::Reserve {
      ALTER LINK Lessor {
          RENAME TO Renter;
      };
  };
};
