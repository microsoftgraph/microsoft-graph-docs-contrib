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
        'listItem'
      ],
      query: {
        queryString: 'contoso',
        queryTemplate: '{searchTerms} CreatedBy:Bob'
      },
      from: 0,
      size: 25
    }
  ]
};

await client.api('/search/query')
	.post(searchResponse);

```