---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  name: 'Name value',
  select: [
    'Select value'
  ],
  search: 'Search value',
  groupBy: [
    'Group By value'
  ],
  orderBy: [
    'Order By value'
  ],
  skip: 4,
  top: 3,
  sessionId: 'Session Id value',
  filter: 'Filter value'
};

await client.api('/deviceManagement/reports/getConfigurationPolicyNonComplianceSummaryReport')
	.post(stream);

```