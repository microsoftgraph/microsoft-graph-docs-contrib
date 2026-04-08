---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
    '@odata.context': 'https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/$entity',
    displayName: 'Dynamic approver policy',
    description: 'Dynamic approver policy',
    canExtend: false,
    durationInDays: 0,
    expirationDateTime: null,
    accessPackageId: 'fc29cdca-57f6-47e3-b20c-3fa18e4826ac',
    accessReviewSettings: null,
    questions: [],
    accessPackageNotificationSettings: {
        isAssignmentNotificationDisabled: false
    },
    verifiableCredentialSettings: {
        credentialTypes: []
    },
    requestorSettings: {
        scopeType: 'AllExistingDirectorySubjects',
        acceptRequests: true,
        allowedRequestors: []
    },
    requestApprovalSettings: {
        isApprovalRequired: true,
        isApprovalRequiredForExtension: false,
        isRequestorJustificationRequired: true,
        approvalMode: 'SingleStage',
        approvalStages: [
            {
                '@odata.type': '#microsoft.graph.accessPackageDynamicApprovalStage',
                customExtension: {
                    '@odata.type': '#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension',
                    id: '52036a43-10b5-444d-a1a2-d4f240420239'
                }
            }
        ]
    },
    customExtensionStageSettings: [
        {
            stage: 'assignmentRequestDeterminingApprovalRequirements',
            customExtension: {
            '@odata.type': '#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension',
            id: '52036a43-10b5-444d-a1a2-d4f240420239'
            }
        }
    ]
};

await client.api('/identityGovernance/entitlementManagement/assignmentPolicies/')
	.post(accessPackageAssignmentPolicy);

```