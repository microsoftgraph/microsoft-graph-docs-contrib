---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  description: 'Library Assist - ADC',
  displayName: 'Library Assist - ADC',
  mailNickname: 'library-help-adc'
};

await client.api('/groups/0d09007d-45b2-458c-b180-880dde3a302e')
	.update(group);

```