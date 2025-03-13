---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const setStatusMessage = {
  statusMessage: {
    message: {
      content: 'Hey I am available now',
      contentType: 'text'
    }
  }
};

await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setStatusMessage')
	.version('beta')
	.post(setStatusMessage);

```