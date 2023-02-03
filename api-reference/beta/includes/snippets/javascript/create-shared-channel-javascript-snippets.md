---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
  displayName: 'My First Shared Channel',
  description: 'This is my first shared channel',
  membershipType: 'shared',
  members: [
    {
      '@odata.type': '#microsoft.graph.aadUserConversationMember',
      'user@odata.bind': 'https://graph.microsoft.com/beta/users(\'7640023f-fe43-gv3f-9gg4-84a9efe4acd6\')',
      roles: [
        'owner'
      ]
    }
  ]
};

await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels')
	.version('beta')
	.post(channel);

```