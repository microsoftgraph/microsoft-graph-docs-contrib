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
        content: 'Hey I\'m currently in a meeting.',
        contentType: 'text'
    },
    expiryDateTime: {
        dateTime: '2022-10-18T17:05:33.2079781',
        timeZone: 'Pacific Standard Time'
    }
  }
};

await client.api('/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setStatusMessage')
	.version('beta')
	.post(setStatusMessage);

```