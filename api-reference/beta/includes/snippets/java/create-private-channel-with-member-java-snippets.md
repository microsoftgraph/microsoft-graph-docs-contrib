---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Channel channel = new Channel();
channel.setOdataType("#Microsoft.Graph.channel");
channel.setMembershipType(ChannelMembershipType.Private);
channel.setDisplayName("My First Private Channel");
channel.setDescription("This is my first private channels");
LinkedList<ConversationMember> members = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users('62855810-484b-4823-9e01-60667f8b12ae')");
conversationMember.setAdditionalData(additionalData);
members.add(conversationMember);
channel.setMembers(members);
Channel result = graphClient.teams().byTeamId("{team-id}").channels().post(channel);


```