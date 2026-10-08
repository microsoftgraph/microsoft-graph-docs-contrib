---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const enhancedPersonalizationSetting = {
  isEnabledInOrganization: true,
  disabledForGroup: 'edbfe4fb-ec70-4300-928f-dbb2ae86c981'
};

await client.api('/copilot/settings/people/enhancedpersonalization')
	.version('beta')
	.update(enhancedPersonalizationSetting);

```