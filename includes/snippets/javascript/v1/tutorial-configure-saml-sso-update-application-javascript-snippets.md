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
        'https://signin.aws.amazon.com/saml'
    ],
    web: {
        redirectUris: [
            'https://signin.aws.amazon.com/saml'
        ]
    }
};

await client.api('/applications/b7308000-8bb3-467b-bfc7-8dbbfd759ad9')
	.update(application);

```