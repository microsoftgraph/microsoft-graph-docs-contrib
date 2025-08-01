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
    'https://graph.microsoft.com/beta/admin/people/profileSources(sourceId=\'contosohr1\')'
  ]
};

await client.api('/admin/people/profilePropertySettings')
	.version('beta')
	.post(profilePropertySetting);

```