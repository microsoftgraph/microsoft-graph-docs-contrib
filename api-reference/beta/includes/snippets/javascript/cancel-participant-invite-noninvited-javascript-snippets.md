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
      identity: {
        '@odata.type': '#microsoft.graph.identitySet',
        user: {
          '@odata.type': '#microsoft.graph.identity',
          id: '278405a3-f568-4b3e-b684-009193463064',
          identityProvider: 'AAD'
        }
      },
      participantId: 'a7ebfb2d-871e-419c-87af-27290b22e8db'
    }
  ],
  clientContext: 'f2fa86af-3c51-4bc2-8fc0-475452d9764f'
};

await client.api('/communications/calls/112f7296-5fa4-42ca-bae8-6a692b15d4b8/participants/invite')
	.version('beta')
	.post(inviteParticipantsOperation);

```