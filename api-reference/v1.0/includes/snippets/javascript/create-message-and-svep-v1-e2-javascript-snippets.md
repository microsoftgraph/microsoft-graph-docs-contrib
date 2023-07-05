---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  singleValueExtendedProperties: [
      {
         id: 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color',
         value: 'Green'
      }
    ]
};

await client.api('/me/messages/AAMkAGE1M2_bs88AACHsLqWAAA=')
	.update(message);

```