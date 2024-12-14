require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "should create task" do
    visit tasks_url
    click_on "New task"

    fill_in "Boolean", with: @task.boolean
    fill_in "Complete", with: @task.complete
    fill_in "Datetime", with: @task.datetime
    fill_in "Description", with: @task.description
    fill_in "Due date", with: @task.due_date
    fill_in "String", with: @task.string
    fill_in "Text", with: @task.text
    fill_in "Timestamps", with: @task.timestamps
    fill_in "Tittle", with: @task.tittle
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit task_url(@task)
    click_on "Edit this task", match: :first

    fill_in "Boolean", with: @task.boolean
    fill_in "Complete", with: @task.complete
    fill_in "Datetime", with: @task.datetime
    fill_in "Description", with: @task.description
    fill_in "Due date", with: @task.due_date
    fill_in "String", with: @task.string
    fill_in "Text", with: @task.text
    fill_in "Timestamps", with: @task.timestamps
    fill_in "Tittle", with: @task.tittle
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "should destroy Task" do
    visit task_url(@task)
    click_on "Destroy this task", match: :first

    assert_text "Task was successfully destroyed"
  end
end
