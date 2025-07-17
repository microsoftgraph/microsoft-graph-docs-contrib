---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.members.remove.RemovePostRequestBody removePostRequestBody = new com.microsoft.graph.teams.item.members.remove.RemovePostRequestBody();
LinkedList<ConversationMember> values = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("microsoft.graph.aadUserConversationMember");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')");
conversationMember.setAdditionalData(additionalData);
values.add(conversationMember);
AadUserConversationMember conversationMember1 = new AadUserConversationMember();
conversationMember1.setOdataType("microsoft.graph.aadUserConversationMember");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('alex@contoso.com')");
conversationMember1.setAdditionalData(additionalData1);
values.add(conversationMember1);
removePostRequestBody.setValues(values);
var result = graphClient.teams().byTeamId("{team-id}").members().remove().post(removePostRequestBody);


```