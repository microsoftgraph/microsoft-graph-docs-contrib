---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentCommunicationConfiguration = {
  isOverridableAtAgentIdLevel: false,
  endpointConfiguration: {
    configurationType: 'apiBased',
    apiBased: {
      callbackUri: 'https://agent.contoso.com/api/messages'
    }
  },
  teamworkConfiguration: {
    groupChatConfiguration: {
      messageNotificationMode: 'atMentionedMessagesOnly'
    },
    channelConfiguration: {
      messageNotificationMode: 'allMessages'
    },
    oneOnOneChatConfiguration: {
      messageNotificationMode: 'allMessages'
    },
    meetingChatConfiguration: {
      messageNotificationMode: 'atMentionedMessagesOnly'
    }
  }
};

await client.api('/applications/2a665ec0-9d8b-43ed-9fa3-2b4c5d6e7f80/microsoft.graph.agentIdentityBlueprint/communicationConfiguration')
	.version('beta')
	.put(agentCommunicationConfiguration);

```