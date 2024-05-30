---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    customSecurityAttributes: 
    {
        Engineering: 
        {
            '@odata.type':'#Microsoft.DirectoryServices.CustomSecurityAttributeValue',
            'NumVendors@odata.type':'#Int32',
            NumVendors: 4
        }
    }
};

await client.api('/users/{id}')
	.update(user);

```