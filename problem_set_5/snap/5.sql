-- For any two users, the app needs to quickly show a list of the friends they have in common. Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends.
--  A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends.

-- Ensure your query uses the index automatically created on primary key columns of the friends table. This index is called sqlite_autoindex_friends_1.


SELECT "user_id" FROM "friends"
WHERE "friend_id" =
(
        SELECT "id"
        FROM "users"
        WHERE "username" = 'lovelytrust487'
)

INTERSECT

SELECT "user_id" FROM "friends"
WHERE "friend_id" =
(
        SELECT "id"
        FROM "users"
        WHERE "username" = 'exceptionalinspiration482'
);


-- +---------+
-- | user_id |
-- +---------+
-- | 1603    |
-- | 2142    |
-- | 2438    |
-- +---------+
