---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const organization = {
  marketingNotificationEmails: ['marketing@contoso.com'],
  privacyProfile: 
    {
      contactEmail: 'alice@contoso.com',
      statementUrl: 'https://contoso.com/privacyStatement'
    },
  securityComplianceNotificationMails: ['security@contoso.com'],
  securityComplianceNotificationPhones: ['(123) 456-7890'],
  technicalNotificationMails: ['tech@contoso.com']
};

await client.api('/organization/84841066-274d-4ec0-a5c1-276be684bdd3')
	.version('beta')
	.update(organization);

```