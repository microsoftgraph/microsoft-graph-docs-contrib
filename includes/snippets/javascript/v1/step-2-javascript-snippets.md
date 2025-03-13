---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chat = {
    chatType: 'group',
    members: [
        {
            '@odata.type': '#microsoft.graph.aadUserConversationMember',
            roles: [
                'owner'
            ],
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'adams@contoso.com\')'
        },
        {
            '@odata.type': '#microsoft.graph.aadUserConversationMember',
            roles: [
                'owner'
            ],
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'gradyA@contoso.com\')'
        },
        {
            '@odata.type': '#microsoft.graph.aadUserConversationMember',
            roles: [
                'owner'
            ],
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'4562bcc8-c436-4f95-b7c0-4f8ce89dca5e\')'
        }
    ]
};

await client.api('/chats')
	.post(chat);

```