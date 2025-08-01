---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alertConfiguration = {
  emailNotificationConfigurations: [
    {
      groupId: 'c5140914-9507-4180-b60c-04d5ec5eddcb',
      isEnabled: true
    }
  ]
};

await client.api('/reports/healthMonitoring/alertConfigurations/{alertConfigurationId}')
	.version('beta')
	.update(alertConfiguration);

```