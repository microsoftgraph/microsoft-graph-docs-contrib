---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workPlanOccurrence = {
  start: {
    dateTime: '2025-12-15T00:00:00.0000000',
    timeZone: 'Pacific Standard Time'
  },
  end: {
    dateTime: '2025-12-15T23:59:59.0000000',
    timeZone: 'Pacific Standard Time'
  },
  workLocationType: 'timeOff',
  timeOffDetails: {
    subject: 'Personal Day',
    isAllDay: false
  }
};

await client.api('/me/settings/workHoursAndLocations/occurrences')
	.version('beta')
	.post(workPlanOccurrence);

```