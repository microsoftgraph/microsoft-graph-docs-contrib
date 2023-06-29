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
  id: '30494ab7-7338-4592-bfec-a4333be2a0a6',
  tenantId: '909c6581-5130-43e9-88f3-fcb3582cde37',
  userId: 'cc515404-b55c-466e-b896-992c918ecc01'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants')
	.version('beta')
	.post(meetingRegistrantBase);

```