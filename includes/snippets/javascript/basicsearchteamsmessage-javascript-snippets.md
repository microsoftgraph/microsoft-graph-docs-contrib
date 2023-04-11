---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const searchResponse = {
  requests: [
    {
      entityTypes: [
        'chatMessage'
      ],
      query: {
        queryString: 'test'
      },
      from: 0,
      size: 25
    }
  ]
};

await client.api('/search/query')
	.version('beta')
	.post(searchResponse);

```