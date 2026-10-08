---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alert = {
  createAlertInput: {
    title: 'Unauthorized access attempt',
    severity: 'high',
    description: 'Multiple failed login attempts from an unusual location.',
    category: 'InitialAccess',
    mitreTechniques: ['T1078'],
    isExcludedFromCorrelation: false,
    entityDefinitions: [
      {
        entityType: 'user',
        entityIdentifier: 'userPrincipalName',
        identifierValue: 'admin@contoso.com',
        role: 'impacted'
      },
      {
        entityType: 'ip',
        entityIdentifier: 'address',
        identifierValue: '198.51.100.42',
        role: 'related'
      }
    ]
  }
};

await client.api('/security/alerts_v2/createAlert')
	.version('beta')
	.post(alert);

```