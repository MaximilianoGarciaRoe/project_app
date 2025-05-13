# Create sample projects with tasks
projects_with_tasks = {
  'E-commerce Website' => [
    { name: 'Design database schema', status: 'completed' },
    { name: 'Implement user authentication', status: 'in_progress' },
    { name: 'Create shopping cart', status: 'pending' }
  ],
  'Mobile App Development' => [
    { name: 'Design UI mockups', status: 'completed' },
    { name: 'Implement API integration', status: 'in_progress' }
  ],
  'Marketing Campaign' => [
    { name: 'Create social media content', status: 'pending' },
    { name: 'Design promotional materials', status: 'in_progress' }
  ],
  'Database Migration' => [
    { name: 'Backup current database', status: 'completed' },
    { name: 'Test migration script', status: 'in_progress' },
    { name: 'Schedule downtime', status: 'pending' }
  ],
  'UI/UX Redesign' => [
    { name: 'Gather user feedback', status: 'completed' },
    { name: 'Create wireframes', status: 'in_progress' },
    { name: 'Implement new design', status: 'pending' }
  ]
}

projects_with_tasks.each do |project_name, tasks|
  project = Project.create!(name: project_name)
  tasks.each do |task|
    project.tasks.create!(task)
  end
end

puts 'Sample projects and tasks created successfully!'
