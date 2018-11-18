(Smalltalk at: #ZnZincServerAdaptor) startOn: 8088.
(Smalltalk at: #WAAdmin) register: VeryNiceDemo asApplicationAt: 'VeryNiceDemo'.
WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.
SmalltalkImage current saveSession.
