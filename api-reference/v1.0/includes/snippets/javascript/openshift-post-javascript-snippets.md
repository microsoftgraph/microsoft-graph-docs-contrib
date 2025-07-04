---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const openShift = {
  schedulingGroupId: 'TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a',
  sharedOpenShift: {
    displayName: 'Dayshift',
    startDateTime: '2024-11-04T20:00:00Z',
    endDateTime: '2024-11-04T21:00:00Z',
    theme: 'blue',
    notes: 'InventoryManagement',
    openSlotCount: 1,
    activities: []
  },
  draftTimeOff: null,
  isStagedForDeletion: false
};

await client.api('/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts')
	.post(openShift);

```