---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationMember = {
    '@odata.type': '#microsoft.graph.aadUserConversationMember',
    'user@odata.bind': 'https://graph.microsoft.com/beta/users/8ba98gf6-7fc2-4eb2-c7f2-aef9f21fd98g',
    roles: ['guest']
};

await client.api('/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members')
	.version('beta')
	.post(conversationMember);

```