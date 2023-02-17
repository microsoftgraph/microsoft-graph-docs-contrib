---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const startHoldMusicOperation = {
  customPrompt: {
    '@odata.type': '#microsoft.graph.mediaPrompt',
    mediaInfo: {
      '@odata.type': '#microsoft.graph.mediaInfo',
      uri: 'https://bot.contoso.com/onHold.wav',
    },
  },
  clientContext: 'd45324c1-fcb5-430a-902c-f20af696537c',
};

await client.api('/communications/calls/e141b67c-90fd-455d-858b-b48a40b9cc8d/participants/fa1e9582-7145-4ca3-bcd8-577f561fcb6e/startHoldMusic')
	.post(startHoldMusicOperation);

```