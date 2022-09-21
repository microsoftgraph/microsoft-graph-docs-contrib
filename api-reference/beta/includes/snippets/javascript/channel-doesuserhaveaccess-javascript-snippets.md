---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let _boolean = await client.api('/teams/0fddfdc5-f319-491f-a514-be1bc1bf9ddc/channels/19:33b76eea88574bd1969dca37e2b7a819@thread.skype/doesUserHaveAccess(userId='6285581f-484b-4845-9e01-60667f8b12ae')')
	.version('beta')
	.get();

```