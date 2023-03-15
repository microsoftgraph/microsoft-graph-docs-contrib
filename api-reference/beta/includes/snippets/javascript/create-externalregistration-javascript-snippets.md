---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistration = {
  '@odata.type': '#microsoft.graph.externalMeetingRegistration',
  allowedRegistrant: 'everyone'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration')
	.version('beta')
	.post(meetingRegistration);

```