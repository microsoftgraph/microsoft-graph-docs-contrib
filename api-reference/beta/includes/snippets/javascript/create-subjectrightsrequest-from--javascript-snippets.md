---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subjectRightsRequest = {
    type: 'export',
    contentQuery: '((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))',
    dataSubjectType: 'customer',
    externalId: 'F53BF2DA-607D-412A-B568-FAA0F023AC0B',
    displayName: 'Export report for customer Id: 12345',
    description: 'This is a export request',
    includeAllVersions: false,
    includeAuthoredContent: true,
    internalDueDateTime: '2022-07-20T22:42:28Z',
    dataSubject: {
        firstName: 'Diego',
        lastName: 'Siciliani',
        email: 'Diego.Siciliani@contoso.com',
        residency: 'USA'
    },
    mailboxLocations: null,
    pauseAfterEstimate: true,
    regulations: [
        'CCPA'
    ],
    siteLocations: {
        '@odata.type': 'microsoft.graph.subjectRightsRequestAllSiteLocation'
    },
    approvers: [
        {
            id: '1B761ED2-AA7E-4D82-9CF5-C09D737B6167'
        }
    ]
};

await client.api('/privacy/subjectRightsRequests')
	.version('beta')
	.post(subjectRightsRequest);

```