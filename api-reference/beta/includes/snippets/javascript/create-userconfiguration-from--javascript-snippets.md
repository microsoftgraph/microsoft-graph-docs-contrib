---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userConfiguration = {
  id: 'MyApp',
  binaryData: 'SGVsbG8=',
  xmlData: 'V29ybGQ=',
  structuredData: [
    {
      keyEntry: {
        type: 'byte',
        values: [
          '100'
        ]
      },
      valueEntry: {
        type: 'boolean',
        values: [
          'true'
        ]
      }
    },
    {
      keyEntry: {
        type: 'integer32',
        values: [
          '-32'
        ]
      },
      valueEntry: {
        type: 'integer64',
        values: [
          '64'
        ]
      }
    },
    {
      keyEntry: {
        type: 'unsignedInteger32',
        values: [
          '32'
        ]
      },
      valueEntry: {
        type: 'unsignedInteger64',
        values: [
          '64'
        ]
      }
    },
    {
      keyEntry: {
        type: 'string',
        values: [
          'DateTime'
        ]
      },
      valueEntry: {
        type: 'dateTime',
        values: [
          '2025-10-23T01:23:45.0000000+00:00'
        ]
      }
    },
    {
      keyEntry: {
        type: 'byteArray',
        values: [
          'AQECAwUI'
        ]
      },
      valueEntry: {
        type: 'stringArray',
        values: [
          'Hello',
          'World'
        ]
      }
    }
  ]
};

await client.api('/me/mailFolders/inbox/userConfigurations')
	.version('beta')
	.post(userConfiguration);

```