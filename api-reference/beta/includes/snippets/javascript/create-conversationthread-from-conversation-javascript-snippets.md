---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationThread = {
    topic: 'Take your wellness days and rest',
    posts: [
        {
            body: {
                contentType: 'html',
                content: 'Waiting for the summer holidays.'
            }
        }
    ]
};

await client.api('/groups/4d81ce71-486c-41e9-afc5-e41bf2d0722a/conversations/AAQkAGRhZmRhMWM3LTYwZTktNDZmYy1hNWU1LThhZWU4NzI2YTEyZgAQABKPPJ682apIiV1UFlj7XxY=/threads')
	.version('beta')
	.post(conversationThread);

```