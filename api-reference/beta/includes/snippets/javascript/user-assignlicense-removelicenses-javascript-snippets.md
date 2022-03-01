---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    addLicenses: [],
    removeLicenses: [
        'f30db892-07e9-47e9-837c-80727f46fd3d',
        '84a661c4-e949-4bd2-a560-ed7766fcaf2b'
    ]
};

await client.api('/me/assignLicense')
	.version('beta')
	.post(user);

```