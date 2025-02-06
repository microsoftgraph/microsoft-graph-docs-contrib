---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceTemplate = {
  mutualTlsOauthConfigurationId: '00001111-aaaa-2222-bbbb-3333cccc4444',
  mutualTlsOauthConfigurationTenantId: '00001111-aaaa-2222-bbbb-3333cccc4445',
  deviceAuthority: 'Lakeshore Retail',
  manufacturer: 'Tailwind Traders',
  model: 'DeepFreezerModelAB',
  operatingSystem: 'WindowsIoT',
  'owners@odata.bind': [
    'https://graph.microsoft.com/beta/users/aaaaaaaa-bbbb-cccc-1111-222222222222'
  ]
};

await client.api('/directory/templates/deviceTemplates')
	.version('beta')
	.post(deviceTemplate);

```