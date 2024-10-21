---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alertConfiguration = await client.api('/reports/healthMonitoring/alertConfigurations/{alertConfigurationId}')
	.version('beta')
	.get();

```