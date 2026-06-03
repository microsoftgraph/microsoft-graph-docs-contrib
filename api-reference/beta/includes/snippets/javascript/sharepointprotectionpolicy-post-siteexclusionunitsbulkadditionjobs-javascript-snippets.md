---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteExclusionUnitsBulkAdditionJob = {
  displayName: 'Bulk exclude archived sites',
  siteWebUrls: [
    'https://contoso.sharepoint.com/sites/Marketing',
    'https://contoso.sharepoint.com/sites/Sales',
    'https://contoso.sharepoint.com/sites/Archives'
  ]
};

await client.api('/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteExclusionUnitsBulkAdditionJobs')
	.version('beta')
	.post(siteExclusionUnitsBulkAdditionJob);

```