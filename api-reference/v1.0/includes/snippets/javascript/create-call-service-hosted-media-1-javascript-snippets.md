---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const call = {
  '@odata.type': '#microsoft.graph.call',
  callbackUri: 'https://bot.contoso.com/callback',
  targets: [
    {
      '@odata.type': '#microsoft.graph.invitationParticipantInfo',
      identity: {
        '@odata.type': '#microsoft.graph.identitySet',
        user: {
          '@odata.type': '#microsoft.graph.identity',
          displayName: 'John',
          id: '112f7296-5fa4-42ca-bae8-6a692b15d4b8'
        }
      }
    }
  ],
  requestedModalities: [
    'audio'
  ],
  callOptions: {
    '@odata.type': '#microsoft.graph.outgoingCallOptions',
    isContentSharingNotificationEnabled: true,
    isDeltaRosterEnabled: true
  },
  mediaConfig: {
    '@odata.type': '#microsoft.graph.serviceHostedMediaConfig'
  }
};

await client.api('/communications/calls')
	.post(call);

```