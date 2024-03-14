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
            id: 'ebb7c86c-fb47-4e3f-8191-420ff1b9de4a',
            isEnabled: false,
            origin: 'Application',
            value: 'Survey.Read'
        }
    ]
};

await client.api('/applications/fda284b5-f0ad-4763-8289-31a273fca865')
	.version('beta')
	.update(application);

```