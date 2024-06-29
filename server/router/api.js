import { Router } from "express";

import userController from "../controller/userController";

const router = Router();

router.get("/", userController);




export default router;
