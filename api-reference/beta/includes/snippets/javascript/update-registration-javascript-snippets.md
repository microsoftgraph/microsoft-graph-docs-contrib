---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistration = {
  subject: 'Microsoft Ignite: Day 1',
  startDateTime: '2021-11-02T08:00:00-08:00',
  endDateTime: '2021-11-02T15:45:00-08:00',
  speakers: [
    {
      displayName: 'Henry Ross',
      bio: 'Chairman and Chief Executive Officer'
    },
    {
      displayName: 'Fred Ryan',
      bio: 'CVP'
    }
  ]
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration')
	.version('beta')
	.update(meetingRegistration);

```