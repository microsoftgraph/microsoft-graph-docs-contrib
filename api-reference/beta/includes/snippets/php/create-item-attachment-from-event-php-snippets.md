---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ItemAttachment;
use Microsoft\Graph\Beta\Generated\Models\Event;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\DateTimeTimeZone;


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

$result = $graphServiceClient->me()->events()->byEventId('event-id')->attachments()->post($requestBody)->wait();

```