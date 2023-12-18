---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationModuleResource = {
    resource: {
         '@odata.type': '#microsoft.graph.educationChannelResource',
         url: 'https://graph.microsoft.com/v1.0/teams/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/channels/19:4gSkXJRlsCMnZvBzAcyXGdsGtcQV0AJWtfvQp_a6Fi81@thread.tacv2',
         displayName: 'General'
    }
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/modules/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources')
	.version('beta')
	.post(educationModuleResource);

```