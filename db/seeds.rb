# Create sample projects
projects = [
  'E-commerce Website',
  'Mobile App Development',
  'Marketing Campaign',
  'Database Migration',
  'UI/UX Redesign'
]

projects.each do |name|
  Project.create!(name: name)
end

puts 'Sample projects created successfully!'


Task.create(name: 'Tarea 1', status: 1, project_id: 1)
Task.create(name: 'Tarea 2', status: 1, project_id: 1)
Task.create(name: 'Tarea 3', status: 1, project_id: 1)
Task.create(name: 'Tarea 4', status: 1, project_id: 1)
Task.create(name: 'Tarea 5', status: 1, project_id: 1)
