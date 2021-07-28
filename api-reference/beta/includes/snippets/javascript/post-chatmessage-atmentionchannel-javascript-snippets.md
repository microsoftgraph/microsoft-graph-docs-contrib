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
        content: '<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>'
    },
    mentions: [
        {
            id: 0,
            mentionText: 'General',
            mentioned: {
                conversation: {
                    id: '19:0b50940236084d258c97b21bd01917b0@thread.skype',
                    displayName: 'General',
                    conversationIdentityType: 'channel'
                }
            }
        }
    ]
};

await client.api('/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages')
	.version('beta')
	.post(chatMessage);

```