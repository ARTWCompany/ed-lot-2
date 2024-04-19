CREATE TABLE `search` (
  `id` integer,
  `search_content` varchar(255),
  `user_id` integer,
  `timestamp` timestamp
);

CREATE TABLE `product` (
  `id` integer,
  `name` varchar(255),
  `description` varchar(255),
  `category_id` integer,
  `type` enum
);

CREATE TABLE `category` (
  `id` integer,
  `name` varchar(255)
);

CREATE TABLE `client` (
  `id` integer,
  `ip` varchar(255)
);

ALTER TABLE `category` ADD FOREIGN KEY (`id`) REFERENCES `product` (`category_id`);

ALTER TABLE `client` ADD FOREIGN KEY (`id`) REFERENCES `search` (`user_id`);
