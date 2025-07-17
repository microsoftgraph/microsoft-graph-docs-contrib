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
$requestBody->setSubject(null);
$body = new ItemBody();
$body->setContentType(new BodyType('html'));
$body->setContent('<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>');
$requestBody->setBody($body);
$attachmentsChatMessageAttachment1 = new ChatMessageAttachment();
$attachmentsChatMessageAttachment1->setId('74d20c7f34aa4a7fb74e2b30004247c5');
$attachmentsChatMessageAttachment1->setContentType('application/vnd.microsoft.card.thumbnail');
$attachmentsChatMessageAttachment1->setContentUrl(null);
$attachmentsChatMessageAttachment1->setContent('{\r\n  \"title\": \"This is an example of posting a card\",\r\n  \"subtitle\": \"<h3>This is the subtitle</h3>\",\r\n  \"text\": \"Here is some body text. <br>\r\nAnd a <a href=\"http://microsoft.com/\">hyperlink</a>. <br>\r\nAnd below that is some buttons:\",\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"Login to FakeBot\",\r\n      \"text\": \"login\",\r\n      \"displayText\": \"login\",\r\n      \"value\": \"login\"\r\n    }\r\n  ]\r\n}');
$attachmentsChatMessageAttachment1->setName(null);
$attachmentsChatMessageAttachment1->setThumbnailUrl(null);
$attachmentsChatMessageAttachment1->setTeamsAppId('881b8843-fd91-49e5-9ac2-47ec497ffbe5');
$attachmentsArray []= $attachmentsChatMessageAttachment1;
$requestBody->setAttachments($attachmentsArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->post($requestBody)->wait();

```