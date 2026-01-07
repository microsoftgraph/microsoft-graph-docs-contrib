---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  '@odata.type': 'microsoft.graph.desk',
  mode: {
    '@odata.type': 'microsoft.graph.dropInPlaceMode'
  }
};

await client.api('/places/530f7900-8063-4daf-9cc1-168cb3ac26e9')
	.version('beta')
	.update(place);

```