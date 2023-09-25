---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certificateBasedApplicationConfigurations = await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations')
	.version('beta')
	.get();

```