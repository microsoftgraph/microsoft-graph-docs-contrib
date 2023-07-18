---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TentativelyAcceptPostRequestBody();
$requestBody->setComment('I may not be able to make this week. How about next week?');

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


$graphServiceClient->me()->events()->byEventId('event-id')->tentativelyAccept()->post($requestBody);


```