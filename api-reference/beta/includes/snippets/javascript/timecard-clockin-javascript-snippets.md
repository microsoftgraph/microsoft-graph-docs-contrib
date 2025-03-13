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
        content: 'clocking in'
    }
};

await client.api('/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/clockin')
	.version('beta')
	.post(timeCard);

```