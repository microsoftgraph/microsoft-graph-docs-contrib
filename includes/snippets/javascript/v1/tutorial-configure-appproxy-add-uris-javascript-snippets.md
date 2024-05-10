---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    identifierUris: [
        'api://32977d3b-ee0e-4614-9f50-f583a07842d2'
    ],
    web: {
        redirectUris: [
            'https://contosoiwaapp-contoso.msappproxy.net'
        ],
        homePageUrl: 'https://contosoiwaapp-contoso.msappproxy.net'
    }
};

await client.api('/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83')
	.update(application);

```