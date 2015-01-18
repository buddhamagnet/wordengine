user = User.create(email: "buddhamagnet@storyville.com", password: "moon1967", password_confirmation: "moon1967")

Story.create(user_id: user.id, name: 'Dead Souls', extract: 'your central nervous system will be gogolized...')
Story.create(user_id: user.id, name: 'Ulysses', extract: 'usurper...')
Story.create(user_id: user.id, name: 'Mrs Dalloway', extract: 'to the lighthouse...')

Poem.create(user_id: user.id, poem: 'And we all walked down to the Greenwood tree!')
