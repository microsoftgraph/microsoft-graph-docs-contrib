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
      ruleId: '33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2',
      subjects: [
        {
          objectId: '8213fd99-d6b6-417b-8e13-af6334856215',
          objectTypeName: 'Group',
          links: {
            members: [
              {
                objectId: 'cbc86211-6ada-4803-b73f-8039cf56d8a2',
                objectTypeName: 'User'
              },
              {
                objectId: '2bc86211-6ada-4803-b73f-8039cf56d8a2',
                objectTypeName: 'User'
              }
            ]
          }
        }
      ]
    }
  ]
};

await client.api('/servicePrincipals/4e116d82-dd59-4944-824d-93091408fd8d/synchronization/jobs/664ea562-18cd-42bb-33e0-8de1f0560581/provisionOnDemand')
	.post(stringKeyStringValuePair);

```