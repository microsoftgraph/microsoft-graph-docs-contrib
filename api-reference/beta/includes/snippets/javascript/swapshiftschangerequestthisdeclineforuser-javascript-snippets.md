---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const declineForUser = {
  message: 'Declined.',
  userId: 'd2e7b5b2-0355-4c73-a543-08847b5b0884'
};

await client.api('/teams/8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/schedule/swapShiftsChangeRequests/SREQ_8f23a3b1-b87f-4a62-b38f-24a5fa83fa29/declineForUser')
	.version('beta')
	.post(declineForUser);

```