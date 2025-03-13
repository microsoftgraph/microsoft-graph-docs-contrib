---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let siteLists = await client.api('/admin/edge/internetExplorerMode/siteLists')
	.get();

```