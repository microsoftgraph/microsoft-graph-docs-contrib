---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onAttributeCollectionSubmitCustomExtension = {
  '@odata.id': 'https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/{customExtensionId}'
};

await client.api('/identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionSubmitListener/handler/microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler/customExtension/$ref')
	.version('beta')
	.put(onAttributeCollectionSubmitCustomExtension);

```