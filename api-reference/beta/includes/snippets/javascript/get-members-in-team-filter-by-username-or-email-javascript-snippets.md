---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/teams/ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062/members')
	.version('beta')
	.filter('(microsoft.graph.aadUserConversationMember/displayName eq \'Harry Johnson\' or microsoft.graph.aadUserConversationMember/email eq \'admin@contoso.com\')')
	.get();

```