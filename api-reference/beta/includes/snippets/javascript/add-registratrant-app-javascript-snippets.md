---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const meetingRegistrantBase = {
  '@odata.type': '#microsoft.graph.meetingRegistrant',
  firstName: 'Lisa',
  lastName: 'Adkins',
  email: 'lisa.adkins@contoso.com',
  customQuestionAnswers: [
    {
      questionId: 'MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=',
      value: 'No'
    },
    {
      questionId: 'MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=',
      value: 'Internet'
    }
  ]
};

await client.api('/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants')
	.version('beta')
	.post(meetingRegistrantBase);

```