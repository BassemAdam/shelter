CREATE MIGRATION m1zvjqkq2yxov6h5y23c6mwx2x5hivrccya4pue76jhfgses5ylynq
    ONTO m1clddvp3ku47ukk7gdswmvbytalgiwupic6hpxdcfps6q7zp4q6dq
{
  ALTER TYPE default::Bedroom {
      ALTER PROPERTY number_of_beds {
          RENAME TO number_of_double_beds;
      };
  };
  ALTER TYPE default::Kitchen {
      ALTER PROPERTY dshes_and_silverware {
          RENAME TO dishes_and_silverware;
      };
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY governrate {
          RENAME TO governorate;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY has_wardrope {
          RENAME TO has_wardrobe;
      };
  };
  ALTER TYPE default::Room {
      ALTER PROPERTY sahred_bathroom {
          RENAME TO shared_bathroom;
      };
  };
};
