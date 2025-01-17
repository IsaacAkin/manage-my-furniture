import express from "express";
import * as db from "./app.js";

const app = express();
app.use(express.static('client', { extensions: ['html'] }));