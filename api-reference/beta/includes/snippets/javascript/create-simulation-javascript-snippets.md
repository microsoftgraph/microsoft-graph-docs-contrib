---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const simulation = {
  displayName: 'Graph Simulation',
  'payload@odata.bind':'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a',
  durationInDays: 7,
  attackTechnique: 'credentialHarvesting',
  status: 'scheduled',
  durationInDays: '3',
  includedAccountTarget: {
    '@odata.type': '#microsoft.graph.addressBookAccountTargetContent',
    type: 'addressBook',
    accountTargetEmails: [
        'john@contoso.com'
    ]
  },
};

await client.api('/security/attackSimulation/simulations')
	.version('beta')
	.post(simulation);

```