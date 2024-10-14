-- The app needs to send users a summary of their engagement. Find the username of the most popular user, defined as the user who has had the most messages sent to them.

-- Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:

-- CREATE INDEX "search_messages_by_to_user_id"
-- ON "messages"("to_user_id");


SELECT "username" FROM "users" AS U
INNER JOIN (
    SELECT "to_user_id", COUNT("to_user_id") AS "message"
    FROM "messages"
    GROUP BY "to_user_id"
) AS P
ON U."id" = P."to_user_id"
ORDER BY "message" DESC, "username" ASC
LIMIT 1;

-- +-------------------------+
-- |        username         |
-- +-------------------------+
-- | admirableachievement138 |
-- +-------------------------+
