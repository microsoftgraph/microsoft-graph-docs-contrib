---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointGroupMember = {
  '@odata.type': '#microsoft.graph.sharePointGroupMember',
  identity: {
    user: {
      userPrincipalName: 'john.smith@contoso.com'
    }
  }
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members')
	.version('beta')
	.post(sharePointGroupMember);

```