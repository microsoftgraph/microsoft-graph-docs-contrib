---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  'template@odata.bind': 'https://graph.microsoft.com/v1.0/teamsTemplates(\'standard\')',
  displayName: 'My Sample Team',
  description: 'My sample team’s description',
  firstChannelName: 'My first channel of the sample team',
};

await client.api('/teams')
	.post(team);

```