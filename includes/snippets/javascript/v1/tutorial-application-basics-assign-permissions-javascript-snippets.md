---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    requiredResourceAccess: [
        {
            resourceAppId: '00000002-0000-0000-c000-000000000000',
            resourceAccess: [
                {
                    id: '311a71cc-e848-46a1-bdf8-97ff7156d8e6',
                    type: 'Scope'
                },
                {
                    id: '3afa6a7d-9b1a-42eb-948e-1650a849e176',
                    type: 'Role'
                }
            ]
        }
    ]
};

await client.api('/applications/581088ba-83c5-4975-b8af-11d2d7a76e98')
	.update(application);

```