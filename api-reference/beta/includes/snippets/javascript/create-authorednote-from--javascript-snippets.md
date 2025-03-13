---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authoredNote = {
    content: {
        content: 'Please take a look at the files tagged with follow up',
        contentType: 'text'
    }
};

await client.api('/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes')
	.version('beta')
	.post(authoredNote);

```