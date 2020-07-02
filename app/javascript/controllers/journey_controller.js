import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'joinmeal' ];

  connect() {
    console.log("Hello world");
  }

  joinmeal = (event) => {
    console.log(event);
    // console.log(this.joinmealTarget);
    fetch('/join_meal_ajax', { headers: { accept: "application/json"} })
      .then(response => response.json())
      .then(data => {
        console.log(data);
      });
  }
}
