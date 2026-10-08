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
      key: 'MeganB@contoso.com',
      type: 'mailbox'
    }
  ]
};

await client.api('/me/distributionLists/AAMkAGI2THVSAAA=/deleteMembers')
	.version('beta')
	.post(distributionList);

```