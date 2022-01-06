---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversation = {
    topic: 'Take your wellness days and rest',
    threads: [
        {
            posts: [
                {
                    body: {
                        contentType: 'html',
                        content: 'Contoso cares about you: Rest and Recharge'
                    },
                    newParticipants: [
                        {
                            emailAddress: {
                                name: 'Adele Vance',
                                address: 'AdeleV@contoso.onmicrosoft.com'
                            }
                        }
                    ]
                }
            ]
        }
    ]
};

await client.api('/groups/29981b6a-0e57-42dc-94c9-cd24f5306196/conversations')
	.post(conversation);

```