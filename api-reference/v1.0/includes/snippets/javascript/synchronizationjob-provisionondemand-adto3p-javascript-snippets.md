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
      subjects: [
        {
          objectId: '9bb0f679-a883-4a6f-8260-35b491b8b8c8',
          objectTypeName: 'User'
        }
      ],
      ruleId: 'ea807875-5618-4f0a-9125-0b46a05298ca'
    }
  ]
};

await client.api('/servicePrincipals/c8c95753-f628-48e1-9fab-76c2d4cf624c/synchronization/jobs/3f7565a3-fde6-4e4d-bda8-1bb70aba3612/provisionOnDemand')
	.post(stringKeyStringValuePair);

```