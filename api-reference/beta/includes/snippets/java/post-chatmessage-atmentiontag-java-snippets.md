---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>");
chatMessage.setBody(body);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
ChatMessageMention chatMessageMention = new ChatMessageMention();
chatMessageMention.setId(0);
chatMessageMention.setMentionText("TestTag");
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
TeamworkTagIdentity tag = new TeamworkTagIdentity();
tag.setId("MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ==");
tag.setDisplayName("TestTag");
mentioned.setTag(tag);
chatMessageMention.setMentioned(mentioned);
mentions.add(chatMessageMention);
chatMessage.setMentions(mentions);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```