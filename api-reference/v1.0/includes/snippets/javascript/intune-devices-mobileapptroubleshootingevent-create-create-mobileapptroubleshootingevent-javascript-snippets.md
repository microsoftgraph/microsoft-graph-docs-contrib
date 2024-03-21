---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mobileAppTroubleshootingEvent = {
  '@odata.type': '#microsoft.graph.mobileAppTroubleshootingEvent'
};

await client.api('/deviceManagement/mobileAppTroubleshootingEvents')
	.post(mobileAppTroubleshootingEvent);

```