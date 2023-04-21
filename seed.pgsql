

INSERT INTO tags (tag_id, name , color)
VALUES(1,'react', 'blue-text-gradient');

INSERT INTO tags (tag_id, name , color)
VALUES(2,'javascript', 'text-orange-400');


INSERT INTO tags (tag_id, name , color)
VALUES(3,'tailwind', 'text-teal-400');

INSERT INTO tags (tag_id, name , color)
VALUES(4,'html', 'text-yellow-200');

INSERT INTO tags (tag_id, name , color)
VALUES(5,'css', 'pink-text-gradient');

INSERT INTO tags (tag_id, name , color)
VALUES(6,'threejs', 'text-gray-400');

-- INSERT HASHTAGS -- 
INSERT INTO hashtags (hash_id, name , color)
VALUES(1,'webdevelopment', 'blue-text-gradient');

INSERT INTO hashtags (hash_id, name , color)
VALUES(2,'javascript', 'text-orange-400');

INSERT INTO hashtags (hash_id, name , color)
VALUES(3,'arrays', 'text-teal-400');

INSERT INTO hashtags (hash_id, name , color)
VALUES(4,'html', 'text-yellow-200');

INSERT INTO hashtags (hash_id, name , color)
VALUES(5,'objects', 'pink-text-gradient');

INSERT INTO hashtags (hash_id, name , color)
VALUES(6,'functions', 'text-gray-400');

INSERT INTO hashtags (hash_id, name , color)
VALUES(7,'pcbuilding', 'text-yellow-200');

INSERT INTO hashtags (hash_id, name , color)
VALUES(8,'gamingpc', 'pink-text-gradient');

INSERT INTO hashtags (hash_id, name , color)
VALUES(9,'nvidia', 'text-gray-400');


-- PROJECTS --
INSERT INTO projects (project_name, project_img_url, git_hub, project_description)
VALUES ('Youtube Clone','https://i.imgur.com/Kac3ylE.jpg','https://github.com/Will-Swinson/YouTube-Remake', 'This project is showcases some CSS abilities and was one of my more favourite projects to do!' );
 
INSERT INTO projects (project_name, project_img_url, git_hub, project_description)
VALUES ('3D Portfolio Website', 'https://i.imgur.com/vUH3S0f.jpg', 'https://github.com/Will-Swinson/3d-portfolio-website', 'I wanted to have a really awesome way to display my work and I thought a 3D Portfolio Website would do the trick!' );

INSERT INTO projects (project_name, project_img_url, git_hub, project_description)
VALUES ('Pixel Art Maker', 'https://i.imgur.com/CVUeRJE.png', 'https://github.com/Will-Swinson/pixel-art-maker', 'This project is just a simple was to showcase some small javascript logic and css styling.');

INSERT INTO projects (project_name, project_img_url, git_hub, project_description)
VALUES ('3D Sphere', 'https://i.imgur.com/q8cPmrT.png', 'https://github.com/Will-Swinson/3d-sphere.git', 'Simple threejs developed rotating sphere that has some cool features as well!');


-- PROJECT TAGS --

-- YOUTUBE PROJECT HASHTAGS --
INSERT INTO project_tags (project_id, tag_id)
VALUES (1, 2);

INSERT INTO project_tags (project_id, tag_id)
VALUES (1, 4);

INSERT INTO project_tags (project_id, tag_id)
VALUES (1, 5);

-- 3D Portfolio -- 
INSERT INTO project_tags (project_id, tag_id)
VALUES (2, 3);

INSERT INTO project_tags (project_id, tag_id)
VALUES (2, 2);

INSERT INTO project_tags (project_id, tag_id)
VALUES (2, 1);

-- Pixel Art Maker -- 
INSERT INTO project_tags (project_id, tag_id)
VALUES (3, 2);

INSERT INTO project_tags (project_id, tag_id)
VALUES (3, 4);

INSERT INTO project_tags (project_id, tag_id)
VALUES (3, 5);

-- 3D Sphere -- 
INSERT INTO project_tags (project_id, tag_id)
VALUES (4, 6);

INSERT INTO project_tags (project_id, tag_id)
VALUES (4, 1);

INSERT INTO project_tags (project_id, tag_id)
VALUES (4, 2);

-- YOUTUBE VIDEOS --
INSERT INTO youtube_vids (video_name, video_img_url, video_url, youtube_url)
VALUES ('Arrays w/ Loops: Coding Challenge! Test Your JavaScript Skills!', 'https://i.imgur.com/dNZib7l.png', 'https://www.youtube.com/watch?v=G2tGTz0-Rpk', 'https://www.youtube.com/@WillSwinson' );

INSERT INTO youtube_vids (video_name, video_img_url, video_url)
VALUES ('JavaScript Coding Challenge: Functions', 'https://i.imgur.com/E5xAYUC.png', 'https://www.youtube.com/watch?v=0I_TF6QJ0Tg&t=818s' );

INSERT INTO youtube_vids (video_name, video_img_url, video_url)
VALUES ('Building a PC That Can Perform...', 'https://i.imgur.com/eoD2hO1.png', 'https://www.youtube.com/watch?v=BcAtlAuVPLU&t=401s');


-- APPLYING HASHTAGS FOR VIDEOS TO PROJECT_TAGS --
INSERT INTO youtube_tags (video_id, hash_id)
VALUES (1, 1);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (1, 3);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (1, 2);


INSERT INTO youtube_tags (video_id, hash_id)
VALUES (2, 1);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (2, 2);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (2, 6);


INSERT INTO youtube_tags (video_id, hash_id)
VALUES (3, 7);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (3, 8);

INSERT INTO youtube_tags (video_id, hash_id)
VALUES (3, 9);