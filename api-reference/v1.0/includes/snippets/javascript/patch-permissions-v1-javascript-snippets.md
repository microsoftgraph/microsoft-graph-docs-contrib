---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permissions = {
  '@context': '#$delta',
  value: [
    {
      roles: ['reader'],
      grantedToV2: {
        user: {
          userPrincipalName: 'alex@contoso.com'
        }
      }
    },
    {
      '@microsoft.graph.conflictBehavior': 'replace',
      roles: ['writer'],
      grantedToV2: {
        user: {
          userPrincipalName: 'kate@contoso.com'
        }
      }
    },
    {
      roles: ['owner'],
      grantedToV2: {
        user: {
          userPrincipalName: 'mike@contoso.com'
        }
      }
    },
    {
      id: 'X2k6MCMuZnxtZW1iZXJzaGlwfGFsZXhAY29udG9zby5jb20',
      roles: ['manager']
    },
    {
      id: 'X2k6MCMuZnxtZW1iZXJzaGlwfG5vdGFmb3VuZEBjb250b3NvLmNvbQ',
      roles: ['manager']
    }
  ]
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions')
	.update(permissions);

```