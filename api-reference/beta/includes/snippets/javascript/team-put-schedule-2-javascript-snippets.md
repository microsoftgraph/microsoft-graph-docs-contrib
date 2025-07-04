---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schedule = {
  enabled: true,
  timeZone: 'America/Chicago',
  provisionStatus: 'Completed',
  provisionStatusCode: null,
  openShiftsEnabled: true,
  swapShiftsRequestsEnabled: true,
  offerShiftRequestsEnabled: true,
  timeOffRequestsEnabled: true,
  startDayOfWeek: 'Tuesday',
  isActivitiesIncludedWhenCopyingShiftsEnabled: true,
  isCrossLocationShiftsEnabled: true,
  isCrossLocationShiftRequestApprovalRequired: true,
  timeClockEnabled: true
};

await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule')
	.version('beta')
	.put(schedule);

```