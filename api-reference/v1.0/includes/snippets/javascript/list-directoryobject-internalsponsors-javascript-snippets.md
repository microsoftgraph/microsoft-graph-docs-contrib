---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let internalSponsors = await client.api('/identityGovernance/entitlementManagement/assignments/{accessPackageAssignmentId}/target/connectedOrganization/internalSponsors')
	.get();

```