---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authoredNote = {
content: 
  {
    content: 'String',
    contentType: 'text'
  }
};

await client.api('/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes')
	.post(authoredNote);

```