import { Router } from "express";

Router
.route("/users")
.get(db.getUsers)
.post(db.createUser)

Router
.route("/users/:id")
.get('/users/:id', db.getUserById)
.delete('/users/:id', db.deleteUser)


export default Router;