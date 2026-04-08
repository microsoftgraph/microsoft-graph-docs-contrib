---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const configureAgent = {
  agentSetting: {
      agentUrl: 'https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi',
      agentSha256: 'EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8',
      installParameters: [
          '/quiet',
          '/norestart',
          'TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1'
      ],
      autoDeploymentEnabled: true
  }
};

await client.api('/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5/configureAgent')
	.version('beta')
	.post(configureAgent);

```