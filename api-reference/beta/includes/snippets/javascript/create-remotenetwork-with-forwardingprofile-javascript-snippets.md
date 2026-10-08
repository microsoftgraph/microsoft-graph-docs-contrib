---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const remoteNetwork = {
    name: 'Bellevue branch w/ fwd profile',
    region: 'canadaEast',
    forwardingProfiles: [
        {
            id: '1adaf535-1e31-4e14-983f-2270408162bf'
        }
    ]
};

await client.api('/networkAccess/connectivity/remoteNetworks')
	.version('beta')
	.post(remoteNetwork);

```