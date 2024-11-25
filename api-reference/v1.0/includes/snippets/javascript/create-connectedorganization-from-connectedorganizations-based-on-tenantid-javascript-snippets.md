---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const connectedOrganization = {
  displayName: 'Connected organization name',
  description: 'Connected organization description',
  identitySources: [
    {
      '@odata.type': '#microsoft.graph.azureActiveDirectoryTenant',
      displayName: 'Contoso',
      tenantId: 'aaaabbbb-0000-cccc-1111-dddd2222eeee'
      }
  ],
  state: 'proposed'
};

await client.api('/identityGovernance/entitlementManagement/connectedOrganizations/')
	.version('beta')
	.post(connectedOrganization);

```