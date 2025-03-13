---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const shift = {
  userId: '5ca83ce7-291d-43b7-bf53-af79eef4bc1d',
  draftShift: {
    displayName: null,
    startDateTime: '2024-10-08T15:00:00Z',
    endDateTime: '2024-10-09T00:00:00Z',
    theme: 'blue',
    notes: null,
    activities: []
  },
  sharedShift: null,
  isStagedForDeletion: false
};

await client.api('/teams/{teamId}/schedule/shifts')
	.post(shift);

```