---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const simulation = {
  id: '2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc',
  displayName: 'Graph Simulation',
  description: 'Test simulation created using postman',
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
        'faiza@contoso.com'
    ]
  },
  excludedAccountTarget: {
    '@odata.type': '#microsoft.graph.addressBookAccountTargetContent',
    type: 'addressBook',
    accountTargetEmails: [
        'sam@contoso.com'
    ]
  }
};

await client.api('/security/attackSimulation/simulations/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc')
	.version('beta')
	.update(simulation);

```