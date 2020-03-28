CREATE TABLE map_pool
(
    id                  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name                VARCHAR(255) NOT NULL COMMENT "Only to help admins with organization. Don't show this to the user.",
    create_time         TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_time         TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB
COMMENT="A collection of maps, used by a matchmaker_pool for map selection";

CREATE TABLE map_pool_map_version
(
    map_pool_id   INT NOT NULL REFERENCES map_pool (id),
    map_version_id        INT NOT NULL REFERENCES map_version (id),
    PRIMARY KEY (map_pool_id, map_version_id),
    INDEX (map_version_id, map_pool_id)
);

CREATE TABLE matchmaker_pool_map_pool
(
    matchmaker_pool_id  INT REFERENCES matchmaker_pool (id),
    map_pool_id         INT NOT NULL REFERENCES map_pool (id),
    min_rating          INT,
    max_rating          INT,
    PRIMARY KEY (matchmaker_pool_id, map_pool_id),
    INDEX (map_pool_id, matchmaker_pool_id)
);