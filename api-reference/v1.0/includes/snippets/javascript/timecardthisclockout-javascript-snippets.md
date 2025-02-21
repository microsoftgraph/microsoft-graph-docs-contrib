---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeCard = {
    isAtApprovedLocation: true,
    notes: {
        contentType: 'text',
        content: 'clocking out'
    }
};

await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards/TCK_95c44dff-bc12-4de2-8a9a-9772e4421eb4/clockOut')
	.post(timeCard);

```