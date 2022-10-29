---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inviteParticipantsOperation = {
  participants: [
    {
      '@odata.type': '#microsoft.graph.invitationParticipantInfo',
      replacesCallId: 'a7ebfb2d-871e-419c-87af-27290b22e8db',
      participantId: '7d501bf1-5ee4-4605-ba92-0ae4513c611c',
      identity: {
        '@odata.type': '#microsoft.graph.identitySet',
        user: {
          '@odata.type': '#microsoft.graph.identity',
          id: '682b6c37-0729-4fab-ace6-d730d5d9137e',
          identityProvider: 'AAD'
        }
      }
    }
  ],
  clientContext: 'f2fa86af-3c51-4bc2-8fc0-475452d9764f'
};

await client.api('/communications/calls/ab6233a5-20b7-4c5e-bea2-ce56c9776429/participants/invite')
	.version('beta')
	.post(inviteParticipantsOperation);

```