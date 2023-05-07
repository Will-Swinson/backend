import postgres from "postgres";
import express from "express";
import * as dotenv from "dotenv";
import cors from "cors";

dotenv.config(); // load environment variables from .env file

const app = express();

// Create a new PostgreSQL client
// Local URL ==> postgres://wswinson:Swinson1!@127.0.0.1:5432/portfolio
const sql = postgres(
  "postgres://db_3d_portfolio_database_user:ectIrHXtoTsuCDx64vu0k4boyQShs4gj@dpg-chbtp3qk728tp98cspd0-a/db_3d_portfolio_database?ssl=true"
);

// CORS Fix
app.use(cors());

// Define a route that retrieves data from the database
app.get("/projects", async (req, res) => {
  try {
    console.log("Fetching...");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    const data = await sql`
    SELECT
    projects.project_id,
    projects.project_name,
    projects.project_img_url,
    projects.git_hub,
    projects.project_description,
    array_agg(
      json_build_object(
        'tag_name', tags.name,
        'tag_color', tags.color
      )
    ) as tag_ids
  FROM projects
  INNER JOIN project_tags ON projects.project_id = project_tags.project_id
  INNER JOIN tags ON tags.tag_id = project_tags.tag_id
  GROUP BY
    projects.project_id,
    projects.project_name,
    projects.project_img_url,
    projects.git_hub,
    projects.project_description;
`;

    console.log(data);

    res.json(data);
  } catch (error) {
    console.error(error);
    res.sendStatus(500);
  }
});

// Youtube Route
app.get("/youtube", async (req, res) => {
  try {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    const data = await sql`SELECT
    youtube_vids.video_id,
    youtube_vids.video_name,
    youtube_vids.video_img_url,
    youtube_vids.video_url,
    youtube_vids.youtube_url,
    json_agg(
      json_build_object(
        'name', hashtags.name,
        'color', hashtags.color
      )
    ) AS hash_ids
  FROM youtube_vids
  LEFT JOIN youtube_tags ON youtube_vids.video_id = youtube_tags.video_id
  LEFT JOIN hashtags ON youtube_tags.hash_id = hashtags.hash_id
  GROUP BY
    youtube_vids.video_id,
    youtube_vids.video_name,
    youtube_vids.video_img_url,
    youtube_vids.video_url,
    youtube_vids.youtube_url;`;

    console.log(data);
    res.json(data);
  } catch (error) {
    console.error(error);
    res.sendStatus(500);
  }
});

// Start the Express server
app.listen(5172, () => {
  console.log("Server is running on port");
});
