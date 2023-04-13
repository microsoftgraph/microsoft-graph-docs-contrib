---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  '@microsoft.graph.teamCreationMode': 'migration',
  'template@odata.bind': 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')',
  displayName: 'My Sample Team',
  description: 'My Sample Team’s Description',
  createdDateTime: '2020-03-14T11:22:17.067Z'
};

await client.api('/teams')
	.version('beta')
	.post(team);

```