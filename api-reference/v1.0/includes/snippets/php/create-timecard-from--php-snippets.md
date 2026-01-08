---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TimeCard;
use Microsoft\Graph\Generated\Models\TimeCardEvent;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeCard();
$requestBody->setUserId('d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2');
$clockInEvent = new TimeCardEvent();
$clockInEvent->setDateTime(new \DateTime('2025-01-07T21:00:00.000Z'));
$clockInEvent->setIsAtApprovedLocation(true);
$clockInEventNotes = new ItemBody();
$clockInEventNotes->setContent('Started late due to traffic in CA 237');
$clockInEventNotes->setContentType(new BodyType('text'));
$clockInEvent->setNotes($clockInEventNotes);
$requestBody->setClockInEvent($clockInEvent);
$clockOutEvent = new TimeCardEvent();
$clockOutEvent->setDateTime(new \DateTime('2025-01-07T21:30:00.000Z'));
$clockOutEvent->setIsAtApprovedLocation(true);
$requestBody->setClockOutEvent($clockOutEvent);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->post($requestBody)->wait();

```