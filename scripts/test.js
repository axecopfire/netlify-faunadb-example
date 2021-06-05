#!/usr/bin/env node

const https = require("https");

const updateTodo = require("./opts/updateTodo");
const requestAllTodos = require("./opts/allTodos");

requestAllTodos()
  .then((resp) => updateTodo(resp))
  .catch((err) => console.error("here", err));
