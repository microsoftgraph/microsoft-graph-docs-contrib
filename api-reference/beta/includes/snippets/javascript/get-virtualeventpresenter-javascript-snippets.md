---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let virtualEventPresenter = await client.api('/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be/presenters/831affc2-4c8a-9929-50e7-02964563b6e4')
	.version('beta')
	.get();

```