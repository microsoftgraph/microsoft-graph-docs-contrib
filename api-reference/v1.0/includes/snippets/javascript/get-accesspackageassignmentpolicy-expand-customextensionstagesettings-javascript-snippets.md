---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignmentPolicy = await client.api('/identityGovernance/entitlementManagement/assignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197')
	.expand('customExtensionStageSettings($expand=customExtension)')
	.get();

```