---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
chatMessage.setSubject("Announcement Subheading");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text");
chatMessage.setBody(body);
LinkedList<ChatMessageAttachment> attachments = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment chatMessageAttachment = new ChatMessageAttachment();
chatMessageAttachment.setId("d7ddbf876ae340c3a03bada395ec7da7");
chatMessageAttachment.setContentType("application/vnd.microsoft.teams.messaging-announcementBanner");
chatMessageAttachment.setContentUrl(null);
chatMessageAttachment.setContent("{\"title\":\"\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/2/$value\",\"imageContentType\":\"image/jpg\"},\"croppedImage\":{\"source\":\"../hostedContents/1/$value\"}}}}");
chatMessageAttachment.setName(null);
chatMessageAttachment.setThumbnailUrl(null);
attachments.add(chatMessageAttachment);
chatMessage.setAttachments(attachments);
LinkedList<ChatMessageHostedContent> hostedContents = new LinkedList<ChatMessageHostedContent>();
ChatMessageHostedContent chatMessageHostedContent = new ChatMessageHostedContent();
byte[] contentBytes = Base64.getDecoder().decode("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA");
chatMessageHostedContent.setContentBytes(contentBytes);
chatMessageHostedContent.setContentType("image/png");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@microsoft.graph.temporaryId", "1");
chatMessageHostedContent.setAdditionalData(additionalData);
hostedContents.add(chatMessageHostedContent);
ChatMessageHostedContent chatMessageHostedContent1 = new ChatMessageHostedContent();
byte[] contentBytes1 = Base64.getDecoder().decode("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe");
chatMessageHostedContent1.setContentBytes(contentBytes1);
chatMessageHostedContent1.setContentType("image/png");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@microsoft.graph.temporaryId", "2");
chatMessageHostedContent1.setAdditionalData(additionalData1);
hostedContents.add(chatMessageHostedContent1);
chatMessage.setHostedContents(hostedContents);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```