---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customAppScope = {
    type: 'RecipientScope',
    displayName: 'Protected Exec Users',
    customAttributes: {
        Exclusive: false,
        RecipientFilter: 'Title -like \'VP*\''
    }
};

await client.api('/roleManagement/exchange/customAppScopes')
	.version('beta')
	.post(customAppScope);

```