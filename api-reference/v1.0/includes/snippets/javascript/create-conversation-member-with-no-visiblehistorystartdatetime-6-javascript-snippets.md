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
    'user@odata.bind': 'https://graph.microsoft.com/v1.0/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d',
    roles: ['owner'],
    tenantId: '4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1'
};

await client.api('/chats/19:cf66807577b149cca1b7af0c32eec122@thread.v2/members')
	.post(conversationMember);

```