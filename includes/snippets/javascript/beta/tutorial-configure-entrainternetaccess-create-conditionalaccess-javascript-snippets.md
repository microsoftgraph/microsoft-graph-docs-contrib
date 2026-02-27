---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conditionalAccessPolicy = {
    conditions: {
        applications: {
            includeApplications: [
                '5dc48733-b5df-475c-a49b-fa307ef00853'
            ]
        },
        users: {
            includeUsers: [
                '00aa00aa-bb11-cc22-dd33-44ee44ee44ee'
            ]
        }
    },
    displayName: 'UserA Access to AI and Bing',
    sessionControls: {
        globalSecureAccessFilteringProfile: {
            profileId: 'dddddddd-9999-0000-1111-eeeeeeeeeeee',
            isEnabled: true
        }
    },
    state: 'enabled'
};

await client.api('/identity/conditionalAccess/policies')
	.version('beta')
	.post(conditionalAccessPolicy);

```