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
      size: 15,
      enableTopResults: true
    }
  ]
};

await client.api('/search/query')
	.post(searchResponse);

```