---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onOtpSendCustomExtension = await client.api('/identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension')
	.version('beta')
	.get();

```