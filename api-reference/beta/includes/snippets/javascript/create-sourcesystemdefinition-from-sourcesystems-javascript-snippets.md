---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sourceSystemDefinition = {
  displayName: 'Rostering source',
  userMatchingSettings: [
    {
      matchTarget: {
        code: 'userPrincipalName'
      },
      priorityOrder: 0,
      'roleGroup@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/roleGroups/staff',
      sourceIdentifier: {
        code: 'username'
      }
    },
    {
      matchTarget: {
        code: 'userPrincipalName'
      },
      priorityOrder: 1,
      'roleGroup@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/roleGroups(\'students\')',
      sourceIdentifier: {
        code: 'username'
      }
    }
  ]
};

await client.api('/external/industryData/sourceSystems')
	.version('beta')
	.post(sourceSystemDefinition);

```