---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const distributionList = {
  displayName: 'Project Team',
  members: [
    {
      displayName: 'Adele Vance',
      emailAddress: 'AdeleV@contoso.com',
      recipientType: 'mailbox'
    },
    {
      displayName: 'Alex Wilber',
      emailAddress: 'AlexW@contoso.com',
      recipientType: 'mailbox'
    }
  ]
};

await client.api('/me/distributionLists')
	.version('beta')
	.post(distributionList);

```