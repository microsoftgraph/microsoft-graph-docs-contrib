---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    appRoles: [
        {
            allowedMemberTypes: [
                'User',
                'Application'
            ],
            description: 'Survey.Read',
            displayName: 'Survey.Read',
            id: '7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0',
            isEnabled: false,
            origin: 'Application',
            value: 'Survey.Read'
        }
    ]
};

await client.api('/applications/bbd46130-e957-4c38-a116-d4d02afd1057')
	.update(application);

```