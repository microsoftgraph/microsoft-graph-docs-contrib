---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/certificateAuthorities//certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1')
	.version('beta')
	.delete();

```