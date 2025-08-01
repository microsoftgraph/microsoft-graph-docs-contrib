---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let allMembers = await client.api('/teams/ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062/channels/19:20bc1df46b1148e9b22539b83bc66809@thread.skype/allMembers')
	.version('beta')
	.filter('(microsoft.graph.aadUserConversationMember/userId eq \'73761f06-2ac9-469c-9f10-279a8cc267f9\')')
	.get();

```