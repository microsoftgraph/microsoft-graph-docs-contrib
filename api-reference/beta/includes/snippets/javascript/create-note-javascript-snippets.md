---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const notes = {
  subject: 'Project Ideas',
  body: {
    contentType: 'html',
    content: '<html><body><p>Consider implementing automated testing framework</p></body></html>'
  }
};

await client.api('/me/notes')
	.version('beta')
	.post(notes);

```