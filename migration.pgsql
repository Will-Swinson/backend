
DROP TABLE IF EXISTS projects, youtube_vids, tags, project_tags, hashtags, youtube_tags;


CREATE TABLE projects(
project_id serial NOT NULL,
project_name char(255),
project_img_url  char(255),
git_hub char(255),
project_description char(255),
PRIMARY KEY (project_id)
);

CREATE TABLE tags(tag_id serial NOT NULL, name char(255), color char(255), PRIMARY KEY(tag_id));

CREATE TABLE project_tags(
project_id int NOT NULL REFERENCES projects(project_id), 
tag_id int NOT NULL REFERENCES tags(tag_id)
);


CREATE TABLE hashtags(hash_id serial NOT NULL, name char(255), color char(255), PRIMARY KEY(hash_id));

CREATE TABLE youtube_vids(
video_id serial NOT NULL,
video_name char(255),
video_img_url char(255),
video_url  char(255),
youtube_url char(255),
PRIMARY KEY (video_id)
);

CREATE TABLE youtube_tags(
video_id int NOT NULL REFERENCES youtube_vids(video_id),
hash_id int NOT NULL REFERENCES hashtags(hash_id)
);

