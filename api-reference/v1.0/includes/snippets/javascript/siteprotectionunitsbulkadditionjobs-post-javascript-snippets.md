---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteProtectionUnitsBulkAdditionJob = {
   displayName: 'Sites-I',
   siteWebUrls: [ 'https://contoso.sharepoint.com/test1', 'https://contoso.sharepoint.com/test2', 'https://contoso.sharepoint.com/test4', 'https://contoso.sharepoint.com/test5' ],
   siteIds: [ 'contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee4532', 'contoso.sharepoint.com,ab60e844-ba1d-49bc-b4d4-d5e36bae9019,832a596e-90a1-49e3-9b48-bfa80bee4532']
};

await client.api('/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteProtectionUnitsBulkAdditionJobs')
	.post(siteProtectionUnitsBulkAdditionJob);

```