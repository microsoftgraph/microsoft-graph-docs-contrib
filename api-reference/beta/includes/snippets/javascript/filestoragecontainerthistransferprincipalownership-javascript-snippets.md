---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const transferPrincipalOwnership = {
  transferTo: {
    user: {
      userPrincipalName: 'newowner@contoso.com'
    }
  }
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/transferPrincipalOwnership')
	.version('beta')
	.post(transferPrincipalOwnership);

```