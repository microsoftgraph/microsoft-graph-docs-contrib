---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.subject = 'Announcement Subheading'

body = ItemBody()
body.contenttype(BodyType.Text('bodytype.text'))

body.content = '<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text'


request_body.body = body
attachments_chat_message_attachment1 = ChatMessageAttachment()
attachments_chat_message_attachment1.id = 'd7ddbf876ae340c3a03bada395ec7da7'

attachments_chat_message_attachment1.content_type = 'application/vnd.microsoft.teams.messaging-announcementBanner'

attachments_chat_message_attachment1.contentUrl=null

attachments_chat_message_attachment1.content = '{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}'

attachments_chat_message_attachment1.name=null

attachments_chat_message_attachment1.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment1;
request_body.attachments(attachmentsArray)


hosted_contents_chat_message_hosted_content1 = ChatMessageHostedContent()
hosted_contents_chat_message_hosted_content1.ContentBytes(base64_decode('iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA'))

hosted_contents_chat_message_hosted_content1.content_type = 'image/png'

additional_data = [
'@microsoft_graph_temporary_id' => '1', 
];
hosted_contents_chat_message_hosted_content1.additional_data(additional_data)



hostedContentsArray []= hostedContentsChatMessageHostedContent1;
hosted_contents_chat_message_hosted_content2 = ChatMessageHostedContent()
hosted_contents_chat_message_hosted_content2.ContentBytes(base64_decode('iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe'))

hosted_contents_chat_message_hosted_content2.content_type = 'image/png'

additional_data = [
'@microsoft_graph_temporary_id' => '2', 
];
hosted_contents_chat_message_hosted_content2.additional_data(additional_data)



hostedContentsArray []= hostedContentsChatMessageHostedContent2;
request_body.hostedcontents(hostedContentsArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body = request_body)


```