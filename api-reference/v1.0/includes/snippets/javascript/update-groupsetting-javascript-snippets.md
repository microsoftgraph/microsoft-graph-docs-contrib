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
      value: 'true'
    }
  ]
};

await client.api('/groups/0167b5af-f3d1-4910-82d2-398747fa381c/settings/fa6df613-159b-4f94-add2-7093f961900b')
	.update(groupSetting);

```