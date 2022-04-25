---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subjectRightsRequest = {
    type: 'microsoft.graph.subjectRightsRequestType',
    dataSubjectType: 'microsoft.graph.dataSubjectType',
    regulations: ['String'],
    displayName: 'String',
    description: 'String',
    internalDueDateTime: 'String (timestamp)',
    dataSubject: {
        firstName: 'String',
        lastName: 'String',
        email: 'String',
        residency: 'String',
        phoneNumber: 'String',
        SSN: 'String'
    }
};

await client.api('/privacy/subjectRightsRequests')
	.post(subjectRightsRequest);

```