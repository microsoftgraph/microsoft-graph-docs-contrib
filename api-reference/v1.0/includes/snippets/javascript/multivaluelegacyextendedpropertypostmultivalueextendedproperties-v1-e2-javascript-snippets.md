---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  multiValueExtendedProperties: [
      {
         id: 'StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette',
         value: ['Green', 'Aqua', 'Blue']
      }
    ]
};

await client.api('/me/messages/AAMkAGE1M2_as77AACHsLrBBBA=')
	.update(message);

```