Chat Spec:

I) Chat requires the following entities:
    A) A Scene
        1) Scenes possess the following characteristics:
            a) A setting
            b) A list of present actors
    B) A list of Users
        1) Users possess the following characteristics:
            a) A username
            b) A password
            c) A uid
            d) A list of controllable actors
                i) Actors possess the following characteristics:
                    -) A name
                    -) A character sheet
                    -) A display name
II) Chat requires the following components:
    A) A chat log window
        1) Affordances:
            a) Ability to display messages
                i) Messages possess the following characteristics:
                    -) A speaker avatar
                        *) A speaker avatar may be generic, environmental, expositional or specific
                            --) A generic avatar is one which applies to a Generic Actor (a specific class of person who is unnamed/trivial in the story)
                                **) E.g.
                                    ---) The face of a generic male townsperson
                                    ---) The face of a generic bartender or waiter
                            --) An environmental avatar is one which visually represents a specific aspect of the setting
                                **) E.g.
                                    ---) Trees
                                    ---) A crowd
                                    ---) The ocean
                                    ---) A snapping twig
                            --) Exposition does not have an avatar
                            --) A specific avatar is one which is set in advance for a specific actor
                    -) A speaker name
                        *) A speaker name may be generic, environmental, expositional or specific
                            --) A generic speaker name applies to a Generic Actor (a specific class of person who is unnamed/trivial in the story)
                                **) e.g.
                                    ---) 'Bartender'
                                    ---) 'Shop clerk'
                            --) An environmental speaker name applies to a specific aspect of the setting
                                **) e.g.
                                    ---) 'Birds'
                                    ---) 'Crowd'
                            --) Exposition does not have a speaker name
                            --) A specific speaker name is the name of an actor in the scene OR a username or actor speaking in an out of character aside
                    -) Message content
                        *) Message content may be spoken, emotive, expositional or an aside
                            --) Spoken content reflects a specific spoken phrase on the part of a specific speaker, in character
                            --) Emotive content reflects an action taken by a speaker or the environment
                            --) Descriptive content reflects a description of an object, person or place
                                **) Expositional messages should be formatted distinctly
            b) Ability to receive new messages
                i) The chat log window should be subscribed to a portion of the store which contains all recent messages (last 1000)
                ii) The portion of state maintaing the message log should be informed by an epic
                    -) The epic receives events in response to a web socket and publishes messages to the store
            c) Ability to scroll through message history
    B) A message entry input
        1) Affordances:
            a) Ability to select current actor from a dropdown
            b) Ability to enter a message
            c) Ability to syntatically indicate emotive message
            d) Ability to send a message to other players
    C)