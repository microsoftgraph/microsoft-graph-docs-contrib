---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profileCardProperty = {
  directoryPropertyName: 'CustomAttribute1',
  annotations: [
    {
      displayName: 'Cost Center',
      localizations: [
        {
          languageTag: 'ru',
          displayName: 'центр затрат'
        }
      ]
    }
  ]
};

await client.api('/admin/people/profileCardProperties')
	.post(profileCardProperty);

```