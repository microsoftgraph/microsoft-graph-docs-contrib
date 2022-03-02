---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistration = {
  '@odata.type': '#microsoft.graph.meetingRegistration',
  subject: 'Microsoft Ignite',
  description: 'Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.',
  startDateTime: '2021-11-02T08:00:00-08:00',
  endDateTime: '2021-11-04T04:00:00-08:00',
  allowedRegistrant: 'everyone',
  speakers: [
    {
      displayName: 'Henry Ross',
      bio: 'Chairman and Chief Executive Officer'
    },
    {
      displayName: 'Hailey Clark',
      bio: 'EVP'
    }
  ],
  customQuestions: [
    {
      displayName: 'Are you a developer?',
      answerInputType: 'radioButton',
      answerOptions: [ 'Yes', 'No' ],
      isRequired: true
    },
    {
      displayName: 'Where did you hear about us?',
      answerInputType: 'text',
      isRequired: false
    }
  ]
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration')
	.version('beta')
	.post(meetingRegistration);

```