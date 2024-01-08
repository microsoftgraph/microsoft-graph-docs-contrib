---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onAttributeCollectionStartCustomExtension = await client.api('/identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension')
	.version('beta')
	.get();

```