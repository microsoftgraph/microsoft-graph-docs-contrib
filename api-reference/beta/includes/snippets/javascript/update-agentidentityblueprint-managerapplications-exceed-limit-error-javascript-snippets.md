---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentIdentityBlueprint = {
  managerApplications: [
    '030bd5f7-db55-4925-959e-5cd332851a0d',
    '1bcc0f3a-18c2-44cb-851a-26e344c2b1bd',
    '6ed7705a-21de-4de9-9e98-95d1a2b5caa5',
    '1925068d-8f9f-4fe8-8d4f-af7d70dce238',
    '383b3cea-2ad2-4ca9-8c86-7f66e507ee77',
    '00f03cc4-3d1f-4b44-8bfa-fca7b181cbb9',
    '9d089274-e6dc-4640-bae2-0c88b4dc89a3',
    '8ea5293f-5d07-45dd-8333-64edfd907423',
    '2a0c3ca6-102f-4f22-a19e-4e5d1d99337d',
    'd40473a1-1d8c-4db9-bc87-1296c90e516b',
    'd902c7bd-7fe6-486a-86e8-00da01936fba'
  ]
};

await client.api('/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11')
	.version('beta')
	.update(agentIdentityBlueprint);

```