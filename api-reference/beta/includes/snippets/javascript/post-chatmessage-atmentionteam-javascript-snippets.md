---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
    body: {
        contentType: 'html',
        content: '<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>'
    },
    mentions: [
        {
            id: 0,
            mentionText: 'GraphTesting',
            mentioned: {
                conversation: {
                    id: '68a3e365-f7d9-4a56-b499-24332a9cc572',
                    displayName: 'GraphTesting',
                    conversationIdentityType: 'team'
                }
            }
        }
    ],
    reactions: [],
    messageHistory: []
};

await client.api('/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages')
	.version('beta')
	.post(chatMessage);

```