---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profileSource = {
  sourceId: 'bamboohr1',
  displayName: 'HR Platform',
  kind: 'BambooHR',
  webUrl: 'https://bamboohr.contoso.com/login',
  localizations: [
    {
      displayName: 'HR-Plattform',
      webUrl: 'http://bamboohr.contoso.com/de/login',
      languageTag: 'de'
    }
  ]
};

await client.api('/admin/people/profileSources')
	.version('beta')
	.post(profileSource);

```