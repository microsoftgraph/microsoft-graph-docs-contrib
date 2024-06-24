---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Events\Item\Decline\DeclinePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TimeSlot;
use Microsoft\Graph\Beta\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeclinePostRequestBody();
$requestBody->setComment('I won\'t be able to make this week. How about next week?');
$requestBody->setSendResponse(true);
$proposedNewTime = new TimeSlot();
$proposedNewTimeStart = new DateTimeTimeZone();
$proposedNewTimeStart->setDateTime('2019-12-02T18:00:00');
$proposedNewTimeStart->setTimeZone('Pacific Standard Time');
$proposedNewTime->setStart($proposedNewTimeStart);
$proposedNewTimeEnd = new DateTimeTimeZone();
$proposedNewTimeEnd->setDateTime('2019-12-02T19:00:00');
$proposedNewTimeEnd->setTimeZone('Pacific Standard Time');
$proposedNewTime->setEnd($proposedNewTimeEnd);
$requestBody->setProposedNewTime($proposedNewTime);

$graphServiceClient->me()->events()->byEventId('event-id')->decline()->post($requestBody)->wait();

```