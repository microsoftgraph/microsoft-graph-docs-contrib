---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChatMessage;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;
use Microsoft\Graph\Generated\Models\ChatMessageAttachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('Testing with file share link. <attachment id=\"668f7fa8-8129-4de7-b32b-fe1b442e6ef1\"></attachment>');
$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('668f7fa8-8129-4de7-b32b-fe1b442e6ef1');
$attachmentsChatMessageAttachment1->setContentType('reference');
$attachmentsChatMessageAttachment1->setContentUrl('https://teamsgraph-my.sharepoint.com/:w:/g/personal/test_teamsgraph_onmicrosoft_com/Eah_j2YpgedNsyv-G0QubvEBma6Sd_76UtYkXwoJ-nYVEg?e=0H2Ibm');
$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```