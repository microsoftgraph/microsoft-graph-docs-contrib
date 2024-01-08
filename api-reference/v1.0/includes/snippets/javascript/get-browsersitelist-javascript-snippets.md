---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let browserSiteList = await client.api('/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573')
	.get();

```