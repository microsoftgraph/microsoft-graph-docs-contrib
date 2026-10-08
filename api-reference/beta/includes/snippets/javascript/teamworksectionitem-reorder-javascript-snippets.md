---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamworkSectionItem = {
  itemsOrder: [
    '19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2',
    '19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces',
    '19:94961b6eacc04e2392e34709c66cb610@thread.v2'
  ]
};

await client.api('/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items/reorder')
	.version('beta')
	.post(teamworkSectionItem);

```