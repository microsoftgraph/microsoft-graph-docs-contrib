---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let allChannels = await client.api('/teams/893075dd-2487-4122-925f-022c42e20265/allChannels')
	.filter('membershipType eq \'shared\'')
	.get();

```