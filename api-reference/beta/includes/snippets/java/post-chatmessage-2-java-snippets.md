---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Hello World <at id=\"0\">Jane Smith</at>");
chatMessage.setBody(body);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
ChatMessageMention chatMessageMention = new ChatMessageMention();
chatMessageMention.setId(0);
chatMessageMention.setMentionText("Jane Smith");
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
Identity user = new Identity();
user.setDisplayName("Jane Smith");
user.setId("ef1c916a-3135-4417-ba27-8eb7bd084193");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userIdentityType", "aadUser");
user.setAdditionalData(additionalData);
mentioned.setUser(user);
chatMessageMention.setMentioned(mentioned);
mentions.add(chatMessageMention);
chatMessage.setMentions(mentions);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```