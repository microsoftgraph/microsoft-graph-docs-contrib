---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  displayName: 'MyAppName',
  signInAudience: 'AzureADMultipleOrgs',
  signInAudienceRestrictions: {
    '@odata.type': '#microsoft.graph.allowedTenantsAudience',
    isHomeTenantAllowed: true,
    allowedTenantIds: [
      '818ce016-78c2-457c-91d7-c02c2faaa5fe',
      'c62670b0-53a1-4a38-b26c-4093cbaa510a'
    ]
  }
};

await client.api('/applications')
	.version('beta')
	.post(application);

```