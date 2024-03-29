---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dayNote = {
    dayNoteDate: '2023-10-08',
    sharedDayNote: {
        contentType: 'text',
        content: 'updated note 08'
    }
};

await client.api('/teams/{teamsId}/schedule/dayNotes/{dayNoteId}')
	.version('beta')
	.put(dayNote);

```