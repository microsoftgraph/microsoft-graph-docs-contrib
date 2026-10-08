---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userConfiguration = {
  structuredData: [
    {
      keyEntry: 
      {
        type: 'string',
        values: [
          'name'
        ]
      },
      valueEntry: 
      {
        type: 'string',
        values: [
          'Snow'
        ]
      }
    }
  ]
};

await client.api('/me/mailFolders/inbox/userConfigurations/MyApp')
	.version('beta')
	.update(userConfiguration);

```