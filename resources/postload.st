ZnZincServerAdaptor  startOn: 8080.
ZnZincServerAdaptor default server debugMode: true.
ZnZincServerAdaptor default server logToTranscript.

WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.

WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].

(WAAdmin register: VeryNiceDemo asApplicationAt: 'verynicedemo').
    "preferenceAt: #serverPath put: '/'."
"WAAdmin defaultDispatcher defaultName: 'image'."
