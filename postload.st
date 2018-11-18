(Smalltalk at: #ZnZincServerAdaptor) startOn: 8088.
WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].
(Smalltalk at: #WAAdmin) register: VeryNiceDemo asApplicationAt: 'VeryNiceDemo'.
SmalltalkImage current saveSession.
