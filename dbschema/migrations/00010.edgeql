CREATE MIGRATION m1clddvp3ku47ukk7gdswmvbytalgiwupic6hpxdcfps6q7zp4q6dq
    ONTO m1ajswlmysr7ysiqrlejeczj2vo7n3dqj6seciarzsw6vusfixwgia
{
  ALTER TYPE default::Livingroom {
      CREATE REQUIRED PROPERTY dining_table: std::bool {
          SET REQUIRED USING (<std::bool>{});
      };
      CREATE REQUIRED PROPERTY livingroom_area: std::decimal {
          SET REQUIRED USING (<std::decimal>{});
      };
  };
};
