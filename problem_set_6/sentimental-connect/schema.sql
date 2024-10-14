CREATE TABLE `users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(100),
    `last_name` VARCHAR(100),
    `username` VARCHAR(100),
    `password` VARCHAR(100),
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100),
    `type` VARCHAR(100),
    `location` VARCHAR(100),
    `year_founded` INT,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100),
    `industry` VARCHAR(100),
    `location` VARCHAR(100),
    PRIMARY KEY (`id`)
);

CREATE TABLE `people_connections` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT,
    `following_id` INT,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_following_id` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);

CREATE TABLE `school_connections` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `degree_type` VARCHAR(100),
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_school_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE
);

CREATE TABLE `company_connections` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT,
    `company_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `title` VARCHAR(100),
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_company_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
);
