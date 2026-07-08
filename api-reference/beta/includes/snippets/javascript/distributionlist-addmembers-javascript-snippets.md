---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const distributionList = {
  members: [
    {
      displayName: 'Megan Bowen',
      key: 'MeganB@contoso.com',
      routingType: 'SMTP',
      recipientType: 'mailbox'
    }
  ]
};

await client.api('/me/distributionLists/AAMkAGI2THVSAAA=/addMembers')
	.version('beta')
	.post(distributionList);

```