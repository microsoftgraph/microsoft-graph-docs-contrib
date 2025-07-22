---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let aiInsights = await client.api('/me/onlineMeetings/YTc3OTFhNWQtNTgwZC00OGZjLWJhYjQtOTFmNTUzMmU4MzEyqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/aiInsights')
	.version('beta')
	.filter('contentcorrelationId eq \'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3\'')
	.get();

```