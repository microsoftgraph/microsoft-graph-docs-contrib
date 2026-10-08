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

await client.api('/servicePrincipals/microsoft.graph.agentIdentity/1f554dbf-8c7a-42dc-8f92-1a3b4c5d6e7f/communicationConfiguration')
	.version('beta')
	.put(agentCommunicationConfiguration);

```