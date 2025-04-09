---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventRegistration = {
  externalRegistrationInformation: {
    referrer: 'Facebook',
    registrationId: 'myExternalRegistrationId'
  },
  preferredTimezone: 'Pacific Standard Time',
  preferredLanguage: 'en-us',
  registrationQuestionAnswers: [
    {
      questionId: '95320781-96b3-4b8f-8cf8-e6561d23447a',
      value: null,
      booleanValue: null,
      multiChoiceValues: [
        'Seattle'
      ]
    },
    {
      questionId: '4577afdb-8bee-4219-b482-04b52c6b855c',
      value: null,
      booleanValue: true,
      multiChoiceValues: []
    },
    {
      questionId: '80fefcf1-caf7-4cd3-b8d7-159e17c47f20',
      value: null,
      booleanValue: null,
      multiChoiceValues: [
        'Cancun',
        'Hoboken',
        'Beijing'
      ]
    }
  ]
};

await client.api('/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations')
	.version('beta')
	.post(virtualEventRegistration);

```