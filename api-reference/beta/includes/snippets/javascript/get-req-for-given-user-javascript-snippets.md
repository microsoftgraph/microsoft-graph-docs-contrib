---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequestRequirements = {
        subject: {
            objectId: '5acd375c-8acb-45de-a958-fa0dd89259ad'
        }
    };

await client.api('/identityGovernance/entitlementManagement/accessPackages/b15419bb-5ffc-ea11-b207-c8d9d21f4e9a/getApplicablePolicyRequirements')
	.version('beta')
	.post(accessPackageAssignmentRequestRequirements);

```