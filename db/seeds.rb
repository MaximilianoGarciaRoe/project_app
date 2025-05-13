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
