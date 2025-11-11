
  
CREATE TYPE season_stats AS (
  season INTEGER,
  gp     INTEGER,
  pts    REAL,
  reb    REAL,
  ast    REAL
);

CREATE TYPE scoring_class AS ENUM('star', 'good', 'average', 'bad');
