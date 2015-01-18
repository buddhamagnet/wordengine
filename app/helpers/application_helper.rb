module ApplicationHelper
	def randomise
      [
      	label: "stories", path: stories_path,
      	label: "poems", path: poems_path, param: Poem.sample,
      ].sample
	end
end
