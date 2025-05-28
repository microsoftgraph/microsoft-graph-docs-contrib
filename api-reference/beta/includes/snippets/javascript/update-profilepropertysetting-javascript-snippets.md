---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profilePropertySetting = {
  '@odata.type': '#microsoft.graph.profilePropertySetting',
  prioritizedSourceUrls: [
    'https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr1\')',
    'https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr2\')'
  ]
};

await client.api('/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001')
	.version('beta')
	.update(profilePropertySetting);

```