---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let browserSharedCookie = await client.api('/admin/edge/internetExplorerMode/siteLists/147713b8-4df2-4717-93a3-bfb1ebb54881/sharedCookies/07f4030f-45ff-4ad1-9277-3b8f6ee74141')
	.get();

```