accessing
user: newUser

	user == newUser ifTrue: [ ^ self ].
	user notNil & newUser isNil ifTrue: [ announcer announce: BBSessionLogOut ].
	user := newUser.
	user notNil ifTrue: [ announcer  announce: BBSessionLogIn ]