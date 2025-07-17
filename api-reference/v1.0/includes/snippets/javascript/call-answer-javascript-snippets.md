---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const answer = {
  callbackUri: 'callbackUri-value',
  mediaConfig: {
    '@odata.type': '#microsoft.graph.appHostedMediaConfig',
    blob: '<Media Session Configuration Blob>'
  },
  acceptedModalities: [
    'audio'
  ],
  callOptions: {
    '@odata.type': '#microsoft.graph.incomingCallOptions',
    isContentSharingNotificationEnabled: true,
    isDeltaRosterEnabled: true
  },
  participantCapacity: 200
};

await client.api('/communications/calls/{id}/answer')
	.post(answer);

```