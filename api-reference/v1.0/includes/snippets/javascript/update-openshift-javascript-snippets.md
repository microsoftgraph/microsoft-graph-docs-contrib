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
    displayName: null,
    startDateTime: '2024-11-04T20:00:00Z',
    endDateTime: '2024-11-04T21:00:00Z',
    theme: 'blue',
    notes: null,
    openSlotCount: 1,
    activities: []
  },
  draftTimeOff: null,
  isStagedForDeletion: false
};

await client.api('/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/openShifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8')
	.put(openShift);

```