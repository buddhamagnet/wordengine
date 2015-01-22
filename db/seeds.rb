User.delete_all

user = User.create(email: "buddhamagnet@storyville.com", password: "moon1967", password_confirmation: "moon1967")

Story.delete_all

s1 = Story.create(user_id: user.id, name: 'Dead Souls', extract: 'your central nervous system will be gogolized...')
s2 = Story.create(user_id: user.id, name: 'Ulysses', extract: 'usurper...')
s3 = Story.create(user_id: user.id, name: 'Mrs Dalloway', extract: 'to the lighthouse...')

s1.fragments.create(content: "I am a dead soul.", user_id: user.id)
s1.fragments.create(content: "I wander the streets of Saint Petersburg.", user_id: user.id)
s1.fragments.create(content: "I knock on black doors and growl.", user_id: user.id)

Poem.delete_all

Poem.create(user_id: user.id, poem: 'And we all walked down to the Greenwood tree!')
