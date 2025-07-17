---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ChatMessage;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageAttachment;
use Microsoft\Graph\Beta\Generated\Models\ChatMessageHostedContent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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
$attachmentsChatMessageAttachment1->setContent('{\"title\":\"\",\"cardImageType\":\"uploadedImage\",\"cardImageDetails\":{\"uploadedImageDetail\":{\"originalImage\":{\"source\":\"../hostedContents/2/$value\",\"imageContentType\":\"image/jpg\"},\"croppedImage\":{\"source\":\"../hostedContents/1/$value\"}}}}');
$attachmentsChatMessageAttachment1->setName(null);
$attachmentsChatMessageAttachment1->setThumbnailUrl(null);
$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);

$hostedContentsChatMessageHostedContent1 = new ChatMessageHostedContent();
$hostedContentsChatMessageHostedContent1->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('iVBORw0KGgoAAAANSUhEUgAABWMAAAEMCAYAAAChuaTsAAAAAXNSR0IArs4c6QAAAARnQU1BA')));
$hostedContentsChatMessageHostedContent1->setContentType('image/png');
$additionalData = [
'@microsoft.graph.temporaryId' => '1',
];
$hostedContentsChatMessageHostedContent1->setAdditionalData($additionalData);
$hostedContentsArray []= $hostedContentsChatMessageHostedContent1;
$hostedContentsChatMessageHostedContent2 = new ChatMessageHostedContent();
$hostedContentsChatMessageHostedContent2->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('iVBORw0KGgoAAAANSUhEUgAAA5YAAAB4CAYAAACJrW0RAAAAAXNSR0IArs4c6QAAIABJREFUe')));
$hostedContentsChatMessageHostedContent2->setContentType('image/png');
$additionalData = [
'@microsoft.graph.temporaryId' => '2',
];
$hostedContentsChatMessageHostedContent2->setAdditionalData($additionalData);
$hostedContentsArray []= $hostedContentsChatMessageHostedContent2;
$requestBody->setHostedContents($hostedContentsArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```