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


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('Here\'s the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>');
$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('153fa47d-18c9-4179-be08-9879815a9f90');
$attachmentsChatMessageAttachment1->setContentType('reference');
$attachmentsChatMessageAttachment1->setContentUrl('https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx');
$attachmentsChatMessageAttachment1->setName('Budget.docx');
$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```