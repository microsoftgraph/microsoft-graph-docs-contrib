---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  autoReconcileProxyConflict: true
};

await client.api('/directory/deleteditems/78bf875b-9343-4edc-9130-0d3958113563/restore')
	.post(directoryObject);

```