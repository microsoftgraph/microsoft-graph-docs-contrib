---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOffReason = {
  displayName: 'Vacation',
  code: 'VacationCode',
  iconType: 'plane',
  isActive: true
};

await client.api('/teams/{teamId}/schedule/timeOffReasons/{timeOffReasonId}')
	.version('beta')
	.put(timeOffReason);

```