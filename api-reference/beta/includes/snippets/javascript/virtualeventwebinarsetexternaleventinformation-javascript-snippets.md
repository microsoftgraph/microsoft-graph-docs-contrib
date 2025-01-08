---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setExternalEventInformation = {
  externalEventId: 'myExternalEventId'
};

await client.api('/solutions/virtualEvents/webinars/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/setExternalEventInformation')
	.version('beta')
	.post(setExternalEventInformation);

```