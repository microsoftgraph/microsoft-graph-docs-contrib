---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profileCardProperty = {
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
  ],
  directoryPropertyName: 'CustomAttribute1',
  isVisible: true
};

await client.api('/admin/people/profileCardProperties')
	.post(profileCardProperty);

```