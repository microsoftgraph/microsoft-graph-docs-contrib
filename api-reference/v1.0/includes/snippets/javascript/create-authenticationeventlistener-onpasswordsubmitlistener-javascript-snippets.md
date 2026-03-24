---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
  '@odata.type': '#microsoft.graph.onPasswordSubmitListener',
  displayName: 'JIT migration listener',
  conditions: {
    applications: {
      includeAllApplications: false,
      includeApplications: [
        {
          appId: '00011111-aaaa-2222-bbbb-3333cccc4444'
        }
      ]
    }
  },
  handler: {
    '@odata.type': '#microsoft.graph.onPasswordMigrationCustomExtensionHandler',
    migrationPropertyId: 'extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration',
    customExtension: {
      id: '6fc5012e-7665-43d6-9708-4370863f4e6e'
    }
  }
};

await client.api('/identity/authenticationEventListeners')
	.post(authenticationEventListener);

```