---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    onPremisesPublishing: {
        externalAuthenticationType: 'aadPreAuthentication',
        internalUrl: 'https://contosoiwaapp.com',
        externalUrl: 'https://contosoiwaapp-contoso.msappproxy.net',
        isHttpOnlyCookieEnabled: true,
        isOnPremPublishingEnabled: true,
        isPersistentCookieEnabled: true,
        isSecureCookieEnabled: true,
        isStateSessionEnabled: true,
        isTranslateHostHeaderEnabled: true,
        isTranslateLinksInBodyEnabled: true
    }
};

await client.api('/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83')
	.version('beta')
	.update(application);

```