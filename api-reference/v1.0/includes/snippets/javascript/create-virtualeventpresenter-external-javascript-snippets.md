---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventPresenter = {
  identity: {
    '@odata.type': '#microsoft.graph.communicationsGuestIdentity',
    displayName: 'Guest Speaker',
    email: 'guest.speaker@fabrikam.com'
  }
};

await client.api('/solutions/virtualEvents/webinars/6b48b5dd-e3a0-428c-b7ad-90896b87a047@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters')
	.post(virtualEventPresenter);

```