---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onlineMeeting = {
  startDateTime: '2025-02-01T14:30:34.2444915-07:00',
  endDateTime: '2025-02-01T15:00:34.2464912-07:00',
  subject: 'Encrypted Meeting',
  isEndToEndEncryptionEnabled: true
};

await client.api('/me/onlineMeetings')
	.post(onlineMeeting);

```