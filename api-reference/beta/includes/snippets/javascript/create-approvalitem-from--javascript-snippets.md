---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const approvalItem = {
  approvers: [
    {
      user: {
        id: '39d1a7fb-5f54-4c89-b513-241683718c9b',
        displayName: 'Jana Pihlak'
      }
    },
    {
      group: {
        id: 'f2926053-5479-4bce-ad4c-8394ce51d6c5'
      }
    }
  ],
  displayName: 'Title of approval',
  description: 'Details of approval',
  approvalType: 'basic',
  allowEmailNotification: true
};

await client.api('/solutions/approval/approvalItems')
	.version('beta')
	.post(approvalItem);

```