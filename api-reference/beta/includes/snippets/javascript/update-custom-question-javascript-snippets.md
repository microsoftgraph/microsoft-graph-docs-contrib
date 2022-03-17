---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistrationQuestion = {
  answerInputType: 'radioButton',
  answerOptions: [
    'Software Engineer',
    'Software Development Manager',
    'Product Manager',
    'Data scientist',
    'Other'
  ]
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=')
	.version('beta')
	.update(meetingRegistrationQuestion);

```