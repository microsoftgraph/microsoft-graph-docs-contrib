---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
  values: [
    {
      name: 'AllowToAddGuests',
      value: 'false'
    }
  ]
};

await client.api('/groupSettings/f0b2d6f5-097d-4177-91af-a24e530b53cc')
	.update(groupSetting);

```