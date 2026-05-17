---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workPlanRecurrence = {
  start: {
    dateTime: '2025-12-11T09:00:00.0000000',
    timeZone: 'Pacific Standard Time'
  },
  end: {
    dateTime: '2025-12-11T18:00:00.0000000',
    timeZone: 'Pacific Standard Time'
  },
  workLocationType: 'office',
  recurrence: {
    pattern: {
      type: 'weekly',
      interval: 1,
      firstDayOfWeek: 'sunday',
      daysOfWeek: ['thursday']
    },
    range: {
      type: 'noEnd',
      startDate: '2025-12-11',
      recurrenceTimeZone: 'Pacific Standard Time'
    }
  }
};

await client.api('/me/settings/workHoursAndLocations/recurrences/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADaJA3YgAA')
	.put(workPlanRecurrence);

```