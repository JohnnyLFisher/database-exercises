USE adlister;
# For a given ad, what is the email address of the user that created it?

SELECT email
FROM Users
WHERE userid IN (
    SELECT userid
    FROM posts
    WHERE postid = 'INSERT POSTID'
         );

# For a given ad, what category, or categories, does it belong to?

SELECT catagoryid
FROM posts
WHERE postid = 'INSERT POSTID';

# For a given category, show all the ads that are in that category.

SELECT *
FROM posts
WHERE catagoryid IN (
    SELECT catagoryid
    FROM catagories
    WHERE catagories.catagoryid = 'INSERT CATAGORYID'
    );


# For a given user, show all the ads they have posted.
SELECT *
FROM posts
WHERE userid = 'INSERT USERID'