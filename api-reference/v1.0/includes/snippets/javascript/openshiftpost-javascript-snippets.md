---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const openShift = {
   schedulingGroupId: 'TAG_228940ed-ff84-4e25-b129-1b395cf78be0',
   sharedOpenShift: {
      notes: 'InventoryManagement',
      openSlotCount: 2,
      displayName: 'Dayshift',
      startDateTime: '2018-10-04T00: 58: 45.340Z',
      endDateTime: '2018-10-04T09: 50: 45.332Z',
      theme: 'white',
      activities: [
         {
            isPaid: true,
            startDateTime: '2018-10-04T00: 58: 45.340Z',
            endDateTime: '2018-10-04T01: 58: 45.340Z',
            code: '',
            displayName: 'Lunch'
         }
      ]
   },
   draftOpenShift: null,
   isStagedForDeletion: false,
};

await client.api('/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts')
	.post(openShift);

```