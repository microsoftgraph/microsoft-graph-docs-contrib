---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignmentRequests = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests')
	.version('beta')
	.filter('(requestState eq \'PendingApproval\')')
	.expand('requestor($expand=connectedOrganization)')
	.get();

```