---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/privacy/subjectRightsRequests/4ef5e3e6-545b-4b5f-a8b4-ff4f9980d7a9/getFinalReport')
	.get();

```