---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemAttachment();
$requestBody->setOdataType('#microsoft.graph.itemAttachment');

$requestBody->setName('Holiday event');

$item = new Event();
$item->setOdataType('microsoft.graph.event');

$item->setSubject('Discuss gifts for children');

$itemBody = new ItemBody();
$itemBody->setContentType(new BodyType('hTML'));

$itemBody->setContent('Let\'s look for funding!');


$item->setBody($itemBody);
$itemStart = new DateTimeTimeZone();
$itemStart->setDateTime('2016-12-02T18:00:00');

$itemStart->setTimeZone('Pacific Standard Time');


$item->setStart($itemStart);
$itemEnd = new DateTimeTimeZone();
$itemEnd->setDateTime('2016-12-02T19:00:00');

$itemEnd->setTimeZone('Pacific Standard Time');


$item->setEnd($itemEnd);

$requestBody->setItem($item);


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody);


```