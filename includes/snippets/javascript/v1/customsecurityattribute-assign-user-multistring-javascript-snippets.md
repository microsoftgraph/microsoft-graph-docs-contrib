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
            'Project@odata.type':'#Collection(String)',
            Project: ['Baker','Cascade']
        }
    }
};

await client.api('/users/{id}')
	.update(user);

```