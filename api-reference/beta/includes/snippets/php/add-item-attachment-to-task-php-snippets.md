---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemAttachment();
$requestBody->set@odatatype('#microsoft.graph.itemAttachment');

$requestBody->setName('Holiday event');

$item = new Event();
$item->set@odatatype('microsoft.graph.event');

$item->setSubject('Discuss gifts for children');

$itemBody = new ItemBody();
$itemBody->setContentType(new BodyType('html'));

$itemBody->setContent('Let\'s look for funding!');


$item->setBody($itemBody);
$itemStart = new DateTimeTimeZone();
$itemStart->setDateTime('2020-01-12T18:00:00');

$itemStart->setTimeZone('Pacific Standard Time');


$item->setStart($itemStart);
$itemEnd = new DateTimeTimeZone();
$itemEnd->setDateTime('2020-01-12T19:00:00');

$itemEnd->setTimeZone('Pacific Standard Time');


$item->setEnd($itemEnd);

$requestBody->setItem($item);


$result = $graphServiceClient->me()->outlook()->tasks()->byTaskId('outlookTask-id')->attachments()->post($requestBody);


```