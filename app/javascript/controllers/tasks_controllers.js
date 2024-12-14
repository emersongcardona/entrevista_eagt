import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["completedTasksList", "incompleteTasksList"]

  connect() {
    console.log("Stimulus controller connected");
    this.fetchTasks('/tasks/completed', this.completedTasksListTarget)
    this.fetchTasks('/tasks/incomplete', this.incompleteTasksListTarget)
  }

  fetchTasks(url, listElement) {
    fetch(url)
      .then(response => response.json())
      .then(tasks => {
        listElement.innerHTML = '';
        tasks.forEach(task => {
          const listItem = document.createElement('li');
          listItem.textContent = task.title;
          listElement.appendChild(listItem);
        });
      })
      .catch(error => console.error('Error fetching tasks:', error));
  }
}

