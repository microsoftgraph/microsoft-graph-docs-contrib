---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const actionResultPart = {
    values: [
        {
            '@odata.type': 'microsoft.graph.aadUserConversationMember',
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'c04f28bf-ab68-40a2-974b-e6af31fa78fb\')'
        },
        {
            '@odata.type': 'microsoft.graph.aadUserConversationMember',
            'user@odata.bind': 'https://graph.microsoft.com/v1.0/users(\'86503198-b81b-43fe-81ee-ad45b8848ac9\')'
        }
    ]
};

await client.api('/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/remove')
	.post(actionResultPart);

```