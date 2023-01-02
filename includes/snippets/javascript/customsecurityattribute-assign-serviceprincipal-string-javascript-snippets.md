---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    customSecurityAttributes: 
    {
        Engineering: 
        {
            '@odata.type':'#Microsoft.DirectoryServices.CustomSecurityAttributeValue',
            ProjectDate: '2022-10-01'
        }
    }
};

await client.api('/servicePrincipals/{id}')
	.version('beta')
	.update(servicePrincipal);

```