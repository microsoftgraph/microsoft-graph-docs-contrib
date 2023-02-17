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
  source: {
    '@odata.type': '#microsoft.graph.participantInfo',
    identity: {
      '@odata.type': '#microsoft.graph.identitySet',
      guest: {
        '@odata.type': '#microsoft.graph.identity',
        displayName: 'Guest User',
        id: 'd7a3b999-17ac-4bca-9e77-e6a730d2ec2e'
      }
    }
  },
  requestedModalities: [
    'audio'
  ],
  mediaConfig: {
    '@odata.type': '#microsoft.graph.serviceHostedMediaConfig',
    preFetchMedia: [
     {
       uri: 'https://cdn.contoso.com/beep.wav',
       resourceId: 'f8971b04-b53e-418c-9222-c82ce681a582'
     },
     {
       uri: 'https://cdn.contoso.com/cool.wav',
       resourceId: '86dc814b-c172-4428-9112-60f8ecae1edb'
     }
    ],
  },
  chatInfo: {
    '@odata.type': '#microsoft.graph.chatInfo',
    threadId: '19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype',
    messageId: '1533758867081'
  },
  meetingInfo: {
    '@odata.type': '#microsoft.graph.organizerMeetingInfo',
    organizer: {
      '@odata.type': '#microsoft.graph.identitySet',
      user: {
        '@odata.type': '#microsoft.graph.identity',
        id: '5810cede-f3cc-42eb-b2c1-e9bd5d53ec96',
        tenantId: 'aa67bd4c-8475-432d-bd41-39f255720e0a',
        displayName: 'Bob'
      }
    },
    allowConversationWithoutHost: true
  }
};

await client.api('/communications/calls')
	.version('beta')
	.post(call);

```