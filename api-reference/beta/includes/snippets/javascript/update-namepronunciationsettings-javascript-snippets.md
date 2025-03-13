---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const namePronunciationSettings = {
  '@odata.type': '#microsoft.graph.namePronunciationSettings',
  isEnabledInOrganization: true
};

await client.api('/admin/people/namePronunciation')
	.version('beta')
	.update(namePronunciationSettings);

```