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
            'CostCenter@odata.type':'#Collection(Int32)',
            CostCenter: [1001,1003]
        }
    }
};

await client.api('/users/{id}')
	.update(user);

```