---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onAttributeCollectionStartCustomExtension = {
  '@odata.id': 'https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/{customExtensionId}'
};

await client.api('/identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension/$ref')
	.version('beta')
	.put(onAttributeCollectionStartCustomExtension);

```