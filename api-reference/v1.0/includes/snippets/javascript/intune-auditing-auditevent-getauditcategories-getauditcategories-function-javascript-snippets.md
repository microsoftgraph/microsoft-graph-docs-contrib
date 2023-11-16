---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAuditCategories = await client.api('/deviceManagement/auditEvents/getAuditCategories')
	.get();

```