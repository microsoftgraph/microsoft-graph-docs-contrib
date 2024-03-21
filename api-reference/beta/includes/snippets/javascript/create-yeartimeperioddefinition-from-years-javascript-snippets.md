---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const yearTimePeriodDefinition = {
  displayName: 'Fiscal Year 2022',
  endDate: '2023-06-15',
  startDate: '2022-09-01',
  year: {
    code: '2022'
  }
};

await client.api('/external/industryData/years')
	.version('beta')
	.post(yearTimePeriodDefinition);

```