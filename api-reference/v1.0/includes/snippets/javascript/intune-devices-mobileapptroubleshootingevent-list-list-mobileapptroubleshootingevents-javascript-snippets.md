---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileAppTroubleshootingEvents = await client.api('/deviceManagement/mobileAppTroubleshootingEvents')
	.get();

```