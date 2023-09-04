---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let localizations = await client.api('/agreements/94410bbf-3d3e-4683-8149-f034e55c39dd/file/localizations')
	.get();

```