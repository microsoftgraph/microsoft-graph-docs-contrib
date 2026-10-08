---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsApp = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/b1c5353a-7aca-41b3-830f-27d5218fe0e5'
};

await client.api('/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a3a8df3ffe558b1c1@thread.tacv2/enabledApps/$ref')
	.post(teamsApp);

```