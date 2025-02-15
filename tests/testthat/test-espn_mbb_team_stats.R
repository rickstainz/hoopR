test_that("ESPN - Get MBB team season stats", {
  skip_on_cran()
  x <- espn_mbb_team_stats(team_id = 52, year = 2022)

  cols <- c(
    "team_id",
    "team_guid",
    "team_uid",
    "team_sdr",
    "team_slug",
    "team_location",
    "team_name",
    "team_nickname",
    "team_abbreviation",
    "team_display_name",
    "team_short_display_name",
    "team_color",
    "team_alternate_color",
    "is_active",
    "is_all_star",
    "logo_href",
    "logo_dark_href",
    "general_disqualifications",
    "general_flagrant_fouls",
    "general_fouls",
    "general_ejections",
    "general_technical_fouls",
    "general_rebounds",
    "general_minutes",
    "general_avg_minutes",
    "general_fantasy_rating",
    "general_avg_rebounds",
    "general_avg_fouls",
    "general_avg_flagrant_fouls",
    "general_avg_technical_fouls",
    "general_avg_ejections",
    "general_avg_disqualifications",
    "general_assist_turnover_ratio",
    "general_steal_foul_ratio",
    "general_block_foul_ratio",
    "general_avg_team_rebounds",
    "general_total_rebounds",
    "general_total_technical_fouls",
    "general_team_assist_turnover_ratio",
    "general_team_rebounds",
    "general_steal_turnover_ratio",
    "general_games_played",
    "general_games_started",
    "general_double_double",
    "general_triple_double",
    "offensive_assists",
    "offensive_field_goals",
    "offensive_field_goals_attempted",
    "offensive_field_goals_made",
    "offensive_field_goal_pct",
    "offensive_free_throws",
    "offensive_free_throw_pct",
    "offensive_free_throws_attempted",
    "offensive_free_throws_made",
    "offensive_offensive_rebounds",
    "offensive_points",
    "offensive_turnovers",
    "offensive_three_point_field_goals_attempted",
    "offensive_three_point_field_goals_made",
    "offensive_team_turnovers",
    "offensive_total_turnovers",
    "offensive_fast_break_points",
    "offensive_avg_field_goals_made",
    "offensive_avg_field_goals_attempted",
    "offensive_avg_three_point_field_goals_made",
    "offensive_avg_three_point_field_goals_attempted",
    "offensive_avg_free_throws_made",
    "offensive_avg_free_throws_attempted",
    "offensive_avg_points",
    "offensive_avg_offensive_rebounds",
    "offensive_avg_assists",
    "offensive_avg_turnovers",
    "offensive_offensive_rebound_pct",
    "offensive_estimated_possessions",
    "offensive_avg_estimated_possessions",
    "offensive_points_per_estimated_possessions",
    "offensive_avg_team_turnovers",
    "offensive_avg_total_turnovers",
    "offensive_three_point_field_goal_pct",
    "offensive_two_point_field_goals_made",
    "offensive_two_point_field_goals_attempted",
    "offensive_avg_two_point_field_goals_made",
    "offensive_avg_two_point_field_goals_attempted",
    "offensive_two_point_field_goal_pct",
    "offensive_shooting_efficiency",
    "offensive_scoring_efficiency",
    "defensive_blocks",
    "defensive_defensive_rebounds",
    "defensive_steals",
    "defensive_turnover_points",
    "defensive_avg_defensive_rebounds",
    "defensive_avg_blocks",
    "defensive_avg_steals"
  )
  expect_equal(sort(colnames(x)), sort(cols))
  expect_s3_class(x, 'data.frame')

})
