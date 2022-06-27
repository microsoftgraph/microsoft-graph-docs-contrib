---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistrationQuestion = {
  displayName: 'What\'s your job position?',
  isRequired: false,
  answerInputType: 'text'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/microsoft.graph.meetingRegistration/customQuestions')
	.version('beta')
	.post(meetingRegistrationQuestion);

```