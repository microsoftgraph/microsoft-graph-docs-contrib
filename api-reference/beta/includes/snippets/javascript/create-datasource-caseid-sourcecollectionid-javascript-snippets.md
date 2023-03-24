---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dataSource = {
    '@odata.type': 'microsoft.graph.ediscovery.userSource',
    email: 'badguy@contoso.com'
};

await client.api('/compliance/ediscovery/cases/15d80234-8320-4f10-96d0-d98d53ffdfc9/sourceCollections/39b0bafd920e4360995c62e18a5e8a49/additionalsources')
	.version('beta')
	.post(dataSource);

```