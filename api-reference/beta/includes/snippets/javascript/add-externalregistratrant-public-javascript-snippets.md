---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistrantBase = {
  '@odata.type': '#microsoft.graph.externalMeetingRegistrant',
  id: '9d96988d-a66a-46ce-aad7-0b245615b297'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants')
	.version('beta')
	.post(meetingRegistrantBase);

```