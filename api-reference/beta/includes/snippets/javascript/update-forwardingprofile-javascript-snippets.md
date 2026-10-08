---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forwardingProfile = {
    associations: [
        {
            '@odata.type': '#microsoft.graph.networkaccess.associatedBranch',
            branchId: '88e5a488-92c3-45d6-ba56-e5cfa63677e8'
        }
    ]
};

await client.api('/networkAccess/forwardingProfiles/{forwardingProfileId}')
	.version('beta')
	.update(forwardingProfile);

```