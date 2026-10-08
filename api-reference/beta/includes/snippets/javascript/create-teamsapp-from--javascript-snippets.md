---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsApp = {
  '@odata.id': 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/7fffdd9a-eb41-37e0-be9b-0bfc89302cb2'
};

await client.api('/teams/92a32d60-8819-41a5-93f1-4e7ab675a84c/channels/19:EXBxA86mdj8ToATNBzN8FcaJFeMgxM3abqoOF9WRVaI1@thread.tacv2/enabledApps/$ref')
	.version('beta')
	.post(teamsApp);

```