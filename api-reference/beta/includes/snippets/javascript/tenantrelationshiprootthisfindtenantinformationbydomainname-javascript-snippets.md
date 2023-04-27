---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantInformation = await client.api('/tenantRelationships/findTenantInformationByDomainName(domainName='contoso.com')')
	.version('beta')
	.get();

```