---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const confirmCompromised = {
  requestIds: [
    '29f270bb-4d23-4f68-8a57-dc73dc0d4caf',
    '20f91ec9-d140-4d90-9cd9-f618587a1471'
  ]
};

await client.api('/auditLogs/signIns/confirmCompromised')
	.post(confirmCompromised);

```