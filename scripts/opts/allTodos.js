const https = require("https");
const options = require("./options");

module.exports = function requestAllTodos() {
  return new Promise((resolve, reject) => {
    // All todos
    const allTodoOptions = { ...options };
    allTodoOptions.path += "/todos-read-all";
    console.log({ allTodoOptions });

    function allTodos(response) {
      let str = "";

      response.on("data", function (chunk) {
        str += chunk;
      });

      response.on("end", function () {
        let todos = JSON.parse(str);
        todos = todos.map((todo) => ({ id: todo.ref["@ref"].id }, todo.data));
        return resolve(todos);
      });
      response.on("error", reject);
    }
    https.request(allTodoOptions, allTodos).end();
  });
};
