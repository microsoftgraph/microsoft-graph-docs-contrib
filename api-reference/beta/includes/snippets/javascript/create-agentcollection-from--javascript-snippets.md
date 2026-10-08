---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentCollection = {
  id: 'Security Copilot Platform Workspace: 001',
  ownerIds: [
    'daf58b0e-44e1-433c-b6b0-ca70cae320b8',
    'b9108c41-d2d2-4e78-b073-92f57b752bd0'
  ],
  managedBy: '719cc904-9700-4e08-9941-fd826cc84c60',
  originatingStore: 'Microsoft Security Copilot',
  createdBy: 'd47bffae-411a-4de9-8548-05e79bc01f0d',
  displayName: 'Conditional Access Agents',
  description: 'A collection of agents to manage your organizations conditional access policies'
};

await client.api('/agentRegistry/agentCollections')
	.version('beta')
	.post(agentCollection);

```