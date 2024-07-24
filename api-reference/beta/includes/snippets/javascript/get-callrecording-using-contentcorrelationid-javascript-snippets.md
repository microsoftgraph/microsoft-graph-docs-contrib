---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recordings = await client.api('/me/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/recordings')
	.version('beta')
	.filter('contentcorrelationId eq \'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0\'')
	.get();

```