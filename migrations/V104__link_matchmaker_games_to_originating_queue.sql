CREATE TABLE matchmaker_queue_game
(
  matchmaker_queue_id INT(10) UNSIGNED NOT NULL,
  game_stats_id       INT(10) UNSIGNED NOT NULL,
  FOREIGN KEY (matchmaker_queue_id) REFERENCES matchmaker_queue (id),
  FOREIGN KEY (game_stats_id) REFERENCES game_stats (id),
  PRIMARY KEY (game_stats_id, matchmaker_queue_id)
);
