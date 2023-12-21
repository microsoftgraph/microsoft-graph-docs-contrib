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
    roles: [],
    'user@odata.bind': 'https://graph.microsoft.com/beta/users(\'jacob@contoso.com\')'
};

await client.api('/teams/ece6f0a1-7ca4-498b-be79-edf6c8fc4d82/channels/19:LpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81@thread.tacv2/members')
	.version('beta')
	.post(conversationMember);

```