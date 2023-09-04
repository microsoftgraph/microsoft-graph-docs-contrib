---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const swapShiftsChangeRequest = {
  senderShiftId: '5ad10161-6524-4c7c-9beb-4e8677ba2f6d',
  senderMessage: 'I can\'t make my shift, any chance we can swap?',
  recipientUserId: '567c8ea5-9e32-422a-a663-8270201699cd',
  recipientShiftId: 'e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c'
};

await client.api('/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/swapShiftsChangeRequests')
	.version('beta')
	.post(swapShiftsChangeRequest);

```