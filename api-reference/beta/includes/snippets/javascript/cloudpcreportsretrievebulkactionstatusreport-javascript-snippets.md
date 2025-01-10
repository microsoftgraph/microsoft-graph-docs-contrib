---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  filter: 'RequestDateTime ge datetime\'2024-08-30\'',
  select: [
    'BulkActionId',
    'BulkActionDisplayName',
    'Action',
    'BulkActionStatus',
    'InitiatedByUserPrincipalName',
    'RequestDateTime',
    'SucceedCount',
    'FailedCount',
    'InprogressCount',
    'TotalCount',
    'Completion'
  ],
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrieveBulkActionStatusReport')
	.version('beta')
	.post(stream);

```