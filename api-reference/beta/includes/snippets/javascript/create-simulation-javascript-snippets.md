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
  payloadDeliveryPlatform: 'email',
  'payload@odata.bind':'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a',
  durationInDays: 7,
  attackTechnique: 'credentialHarvesting',
  attackType: 'social',
  status: 'scheduled',
  completionDateTime: '2022-09-16T06:13:08.4297612Z',
  launchDateTime: '2022-09-05T06:13:08.4297612Z',
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