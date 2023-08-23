import express, { json } from "express";
// const cookieParser = require("cookie-parser");
import cors from "cors";
import { config } from "dotenv";
import { createServer } from "http";
// import { Server } from "socket.io";

import applicant from "./routes/applicant.js";
import auth from "./routes/auth.js";
import candidateProfile from "./routes/candidateProfile.js";
import company from "./routes/company.js";
import education from "./routes/education.js";
import job from "./routes/job.js";
import langAbility from "./routes/langAbility.js";
import message from "./routes/message.js";
import notification from "./routes/notification.js";
import officer from "./routes/officer.js";
import resume from "./routes/resume.js";
import shortlistedCandidate from "./routes/shortlistedCandidate.js";
import skill from "./routes/skill.js";
import successfulCandidate from "./routes/successfulCandidate.js";
import user from "./routes/user.js";
import workExperience from "./routes/workExperience.js";

const app = express();
const httpServer = createServer(app);
const io = new Server(httpServer, {
  cors: {
    credentials: true,
  },
});
const port = process.env.PORT || 3000;

config();

app.use(json());
// app.use(cookieParser());
app.use(
  cors({
    credentials: true,
  })
);

/**
{
    status: number,
    message: string,
    data: []
}
*/

/**
HTTP Status Code
200 - Ok : read, delete, update
201 - Created : create
204 - No Content : logout
400 - Bad Request : takde password utk login
401 - Unauthorized
403 - Forbidden
404 - Not Found : tak jumpa
409 - Conflict : email dah ada
500 - Internal Server Error : database error, server down
*/

// Uncomment this only for development purposes
// app.use((req, res, next) => {
//     console.log(
//         `[${new Date().getDate()}/${new Date().getMonth()}/${new Date().getFullYear()} ${new Date().getHours()}:${new Date().getMinutes()}:${new Date().getSeconds()}:${new Date().getMilliseconds()}] ${
//             req.method
//         } ${req.originalUrl}`
//     );
//     console.log(req.body);
//     console.log("***************************************************");

//     next();
// });

// app.get("/test-cookie", (req, res) => {
//     res.cookie("helloworld", "helloworld", { sameSite: "none", secure: true });
//     res.json({ status: "ok" });
// });

app.use("/api/applicant", applicant);
app.use("/api/auth", auth);
app.use("/api/candidate-profile", candidateProfile);
app.use("/api/company", company);
app.use("/api/education", education);
app.use("/api/job", job);
app.use("/api/lang-ability", langAbility);
app.use("/api/message", message);
app.use("/api/notification", notification);
app.use("/api/officer", officer);
app.use("/api/resume", resume);
app.use("/api/shortlisted-candidate", shortlistedCandidate);
app.use("/api/skill", skill);
app.use("/api/successful-candidate", successfulCandidate);
app.use("/api/user", user);
app.use("/api/work-experience", workExperience);

// WebSocket connection for real-time messages
// io.on("connection", (socket) => {
//   socket.on("chat", (message) => {
//     io.emit("chat", message);
//   });
// });

app.all("/*", (req, res) => {
  res.status(404).json({
    status: "404 - Not Found",
    message: "API endpoint not exists!",
  });
});

httpServer.listen(Number(port), "0.0.0.0", () => {
  console.log(`Listening on port http://localhost:${port}`);
});
