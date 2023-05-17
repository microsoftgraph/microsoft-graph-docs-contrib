---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$requestBody->setSubject('Announcement Subheading');

$body = new ItemBody();
$body->setContentType(new BodyType('text'));

$body->setContent('<attachment id=\"d7ddbf876ae340c3a03bada395ec7da7\"></attachment>Announcement text');


$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('d7ddbf876ae340c3a03bada395ec7da7');

$attachmentsChatMessageAttachment1->setContentType('application/vnd.microsoft.teams.messaging-announcementBanner');

$attachmentsChatMessageAttachment1->setContentUrl(null);

$attachmentsChatMessageAttachment1->setContent('{\"title\":\"Announcement heading\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/1/$value\",\"width\":1379,\"height\":268,\"croppedWidth\":918.0,\"croppedHeight\":178.4075416968818,\"leftMargin\":0.0,\"topMargin\":90.7962291515591,\"imageContentType\":\"image/png\"},\"croppedImage\":{\"source\":\"../hostedContents/2/$value\"}}}}');

$attachmentsChatMessageAttachment1->setName(null);

$attachmentsChatMessageAttachment1->setThumbnailUrl(null);


$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);


$hostedContentsChatMessageHostedContent1 = new ChatMessageHostedContent();
$hostedContentsChatMessageHostedContent1->setContentBytes(base64_decode('iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4'));

$hostedContentsChatMessageHostedContent1->setContentType('image/png');

$additionalData = [
	'@microsoft.graph.temporaryId' => '1', 
];
$hostedContentsChatMessageHostedContent1->setAdditionalData($additionalData);



$hostedContentsArray []= $hostedContentsChatMessageHostedContent1;
$hostedContentsChatMessageHostedContent2 = new ChatMessageHostedContent();
$hostedContentsChatMessageHostedContent2->setContentBytes(base64_decode('iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4'));

$hostedContentsChatMessageHostedContent2->setContentType('image/png');

$additionalData = [
	'@microsoft.graph.temporaryId' => '2', 
];
$hostedContentsChatMessageHostedContent2->setAdditionalData($additionalData);



$hostedContentsArray []= $hostedContentsChatMessageHostedContent2;
$requestBody->setHostedContents($hostedContentsArray);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```