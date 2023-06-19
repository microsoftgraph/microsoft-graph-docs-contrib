---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
chatMessage.subject = "Announcement Subheading";
ItemBody body = new ItemBody();
body.contentType = BodyType.TEXT;
body.content = "<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text";
chatMessage.body = body;
LinkedList<ChatMessageAttachment> attachmentsList = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment attachments = new ChatMessageAttachment();
attachments.id = "d7ddbf876ae340c3a03bada395ec7da7";
attachments.contentType = "application/vnd.microsoft.teams.messaging-announcementBanner";
attachments.contentUrl = null;
attachments.content = "{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}";
attachments.name = null;
attachments.thumbnailUrl = null;
attachmentsList.add(attachments);
chatMessage.attachments = attachmentsList;
LinkedList<ChatMessageHostedContent> hostedContentsList = new LinkedList<ChatMessageHostedContent>();
ChatMessageHostedContent hostedContents = new ChatMessageHostedContent();
hostedContents.additionalDataManager().put("@microsoft.graph.temporaryId", new JsonPrimitive("1"));
hostedContents.contentBytes = Base64.getDecoder().decode("iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4");
hostedContents.contentType = "image/png";
hostedContentsList.add(hostedContents);
ChatMessageHostedContent hostedContents1 = new ChatMessageHostedContent();
hostedContents1.additionalDataManager().put("@microsoft.graph.temporaryId", new JsonPrimitive("2"));
hostedContents1.contentBytes = Base64.getDecoder().decode("iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4");
hostedContents1.contentType = "image/png";
hostedContentsList.add(hostedContents1);
ChatMessageHostedContentCollectionResponse chatMessageHostedContentCollectionResponse = new ChatMessageHostedContentCollectionResponse();
chatMessageHostedContentCollectionResponse.value = hostedContentsList;
ChatMessageHostedContentCollectionPage chatMessageHostedContentCollectionPage = new ChatMessageHostedContentCollectionPage(chatMessageHostedContentCollectionResponse, null);
chatMessage.hostedContents = chatMessageHostedContentCollectionPage;

graphClient.teams("5c884e2f-83f8-4cff-af8e-0177f260b9f8").channels("19:81f49626414645c99469ee65a1a7e1a4@thread.tacv2").messages()
	.buildRequest()
	.post(chatMessage);

```