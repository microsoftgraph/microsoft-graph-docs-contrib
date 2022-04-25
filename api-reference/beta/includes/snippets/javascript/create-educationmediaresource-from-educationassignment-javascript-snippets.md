---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentResource = {
    distributeForStudentWork: false,
    resource: {
        '@odata.type': 'microsoft.graph.educationMediaResource',
        displayName: 'homework example.PNG',
        fileUrl: 'https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RMUWOKAGSJZ6BHINJVKNMOOJABF'
    }
};

await client.api('/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignments/1618dfb0-3ff2-4edf-8d5c-b8f81df00e80/resources')
	.version('beta')
	.post(educationAssignmentResource);

```