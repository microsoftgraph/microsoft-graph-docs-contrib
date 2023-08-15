---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileAppTroubleshootingEvent = await client.api('/deviceManagement/mobileAppTroubleshootingEvents/{mobileAppTroubleshootingEventId}')
	.get();

```