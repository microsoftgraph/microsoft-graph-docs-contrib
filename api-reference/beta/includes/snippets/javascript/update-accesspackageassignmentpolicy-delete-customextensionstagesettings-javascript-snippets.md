---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
    id: '5540a08f-8ab5-43f6-a923-015275799197',
    displayName: 'policy with access package custom workflow extension',
    description: 'Run specified access package custom workflow extension at different stages.',
    accessPackageId: 'ba5807c7-2aa9-4c8a-907e-4a17ee587500',
    expiration: {
        type: 'afterDuration',
        duration: 'P365D'
    },
    requestApprovalSettings: null,
    requestorSettings: {
        acceptRequests: true,
        scopeType: 'AllExistingDirectorySubjects',
        allowedRequestors: []
    },
    accessReviewSettings: null,
    customExtensionHandlers: []
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/4540a08f-8ab5-43f6-a923-015275799197')
	.version('beta')
	.put(accessPackageAssignmentPolicy);

```