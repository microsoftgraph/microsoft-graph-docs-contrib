---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRightsIncluded = await client.api('/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23/rights?ownerEmail=bob@contoso.com')
	.header('Authorization','Bearer {token}')
	.header('Client-Request-Id','7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a')
	.get();

```