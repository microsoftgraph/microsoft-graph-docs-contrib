---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customCalloutExtension = await client.api('/identityGovernance/entitlementManagement/catalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customWorkflowExtensions/78ffaec5-ae8e-4902-a434-5ffc5d3d3cd0')
	.get();

```