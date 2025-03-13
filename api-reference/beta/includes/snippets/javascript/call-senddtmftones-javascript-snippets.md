---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendDtmfTonesOperation = {
  tones: [
    'tone1',
    'tone2',
    'tone3',
    'tone4',
    'tone5',
    'tone6',
    'tone7',
    'tone8',
    'tone9',
    'tone0',
    'star',
    'pound'
  ],
  delayBetweenTonesMs: 1000,
  clientContext: 'e0be71f1-a14f-4cec-b65a-e7aba5db7c53'
};

await client.api('/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/microsoft.graph.sendDtmfTones')
	.version('beta')
	.post(sendDtmfTonesOperation);

```