---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const restorePointSearchResponse = {
  artifactQuery: {
    structuredQueryExpression: {
      senders: ['abc@contoso.com'],
      subjects: ['Check email', 'Important'],
      hasAttachment: true,
      items: ['email']
    }
  },
  protectionUnitIds: ['23014d8c-71fe-4d00-a01a-31850bc5b42a'],
  protectionTimePeriod: {
    startDateTime: '2021-01-01T00:00:00Z',
    endDateTime: '2021-01-30T00:00:00Z'
  },
  restorePointPreference: 'oldest'
};

await client.api('/solutions/backupRestore/restorePoints/search')
	.version('beta')
	.post(restorePointSearchResponse);

```