---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stringKeyStringValuePair = {
  parameters: [
    {
      ruleId: '6c409270-f78a-4bc6-af23-7cf3ab6482fe',
      subjects: [
        {
          objectId: 'CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com',
          objectTypeName: 'user'
        }
      ]
    }
  ]
};

await client.api('/servicePrincipals/3e916d82-dd59-4944-824d-93092908fd8d/synchronization/jobs/264ea562-28cd-42b1-93e0-8de1f0560581/provisionOnDemand')
	.version('beta')
	.post(stringKeyStringValuePair);

```