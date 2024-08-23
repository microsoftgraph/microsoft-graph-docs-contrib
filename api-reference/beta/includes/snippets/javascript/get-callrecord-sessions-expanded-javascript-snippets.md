---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sessions = await client.api('/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5/sessions')
	.version('beta')
	.expand('segments')
	.get();

```