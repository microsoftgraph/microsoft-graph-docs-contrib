---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
    tags: [
        'HR',
        'Payroll',
        'HideApp'
    ],
    info: {
        logoUrl: 'https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png',
        marketingUrl: 'https://www.contoso.com/app/marketing',
        privacyStatementUrl: 'https://www.contoso.com/app/privacy',
        supportUrl: 'https://www.contoso.com/app/support',
        termsOfServiceUrl: 'https://www.contoso.com/app/termsofservice'
    },
    web: {
        homePageUrl: 'https://www.contoso.com/',
        logoutUrl: 'https://www.contoso.com/frontchannel_logout',
        redirectUris: [
            'https://localhost'
        ]
    },
    serviceManagementReference: 'Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;'
};

await client.api('/applications/0d0021e2-eaab-4b9f-a5ad-38c55337d63e/')
	.update(application);

```