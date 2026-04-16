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
    dateTime: '2025-12-15T08:00:00.0000000',
    timeZone: 'Pacific Standard Time'
  },
  end: {
    dateTime: '2025-12-15T12:00:00.0000000',
    timeZone: 'Pacific Standard Time'
  },
  workLocationType: 'timeOff',
  timeOffDetails: {
    subject: 'Doctor Appointment',
    isAllDay: false
  }
};

await client.api('/me/settings/workHoursAndLocations/occurrences/QAAuAAAAAB2EAxGqZhHNm8gAqgAvxFoNAOtpUxZW-2ZHr9tjSZTO0jMAA2iQN2IAABA=')
	.put(workPlanOccurrence);

```