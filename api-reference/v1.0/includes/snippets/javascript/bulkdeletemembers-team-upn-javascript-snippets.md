---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationMember = {
    values: [
        {
            '@odata.type': 'microsoft.graph.aadUserConversationMember',
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'jacob@contoso.com\')'
        },
        {
            '@odata.type': 'microsoft.graph.aadUserConversationMember',
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'alex@contoso.com\')'
        }
    ]
};

await client.api('/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/remove')
	.post(conversationMember);

```