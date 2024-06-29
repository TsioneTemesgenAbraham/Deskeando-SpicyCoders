import logger from "../utils/logger";

import { connectDb, disconnectDb } from "./db";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";




// export const userSignIn = async (req,res) => {

// }

export const registerUser = async (req, res) => {
    const { name, email, password } = req.body;
	const hashedPassword = await bcrypt.hash(password, 10);
};