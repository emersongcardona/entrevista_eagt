import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("hola")
    this.element.textContent = "Hello World!"
    this.fetchTasks('http://localhost:3000/tasks/completed', this.completedTasksListTarget)
    this.fetchTasks('/tasks/incomplete', this.incompleteTasksListTarget)
    console.log(this.completedTasksListTarget)
  }

  fetchTasks(url, listElement) {
    fetch(url)
      .then(response => response.json())
      .then(tasks => {
        listElement.innerHTML = ''; 
        tasks.forEach(task => {
          const listItem = document.createElement('li');
          listItem.textContent = task.title;  // Suponiendo que las tareas tienen un campo "title"
          listElement.appendChild(listItem);
        });
      })
      .catch(error => console.error('Error fetching tasks:', error));
  }
}
