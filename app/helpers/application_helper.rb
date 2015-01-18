module ApplicationHelper
	def randomise
      [
      	label: "stories", path: stories_path(Story.sample), param: nil,
      	label: "poems", path: poems_path(Poem.sample),
      ].sample
	end
end
