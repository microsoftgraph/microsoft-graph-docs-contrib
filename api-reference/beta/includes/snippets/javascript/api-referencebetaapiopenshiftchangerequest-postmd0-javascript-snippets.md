---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const openShiftChangeRequest = {
  senderMessage: 'Can I take this shift?',
  openShiftId: '577b75d2-a927-48c0-a5d1-dc984894e7b8'
};

await client.api('/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShiftChangeRequests')
	.version('beta')
	.post(openShiftChangeRequest);

```