---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const federatedIdentityCredential = {
    name: 'testing02',
    issuer: 'https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0',
    subject: 'a7d388c3-5e3f-4959-ac7d-786b3383006a',
    audiences: [
        'api://AzureADTokenExchange'
    ]
};

await client.api('/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/')
	.post(federatedIdentityCredential);

```