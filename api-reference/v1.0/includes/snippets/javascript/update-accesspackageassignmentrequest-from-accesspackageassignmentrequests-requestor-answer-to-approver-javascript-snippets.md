---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
    '@odata.type': '#microsoft.graph.accessPackageAssignmentRequest',
    id: '7a6ab703-0780-4b37-8445-81f679b2d75c',
    requestType: 'adminUpdate',
    answers: [
        {
            '@odata.type': '#microsoft.graph.accessPackageAnswerString',
            value: 'UpdatedAnswerValue',
            answeredQuestion: {
                '@odata.type': '#microsoft.graph.accessPackageMultipleChoiceQuestion',
                id: '8fe745e7-80b2-490d-bd22-4e708c77288c'
            }
        },
        {
            '@odata.type': '#microsoft.graph.accessPackageAnswerString',
            value: 'My updated answer.',
            displayValue: 'This is my updated answer to the question.',
            answeredQuestion: {
                '@odata.type': '#microsoft.graph.accessPackageTextInputQuestion',
                id: '7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6'
            }
        }
    ],
    assignment: {
        id: '44c741c1-2cf4-40db-83b6-e0112f8e5a83'
    }
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.post(accessPackageAssignmentRequest);

```