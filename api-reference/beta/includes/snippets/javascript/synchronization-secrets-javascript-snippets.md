---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const secrets = {
    value: [
        {
            key: 'BaseAddress',
            value: 'user@domain.com'
        },
        {
            key: 'SecretToken',
            value: 'password-value'
        },
        {
            key: 'SyncNotificationSettings',
            value: '{\"Enabled\':false,\'DeleteThresholdEnabled\':false}"
        },
        {
            key: 'SyncAll',
            value: 'false'
        }
    ]
};

await client.api('/servicePrincipals/{id}/synchronization/secrets')
	.version('beta')
	.put(secrets);

```