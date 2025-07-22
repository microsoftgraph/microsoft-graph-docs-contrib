---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TimeCard;
use Microsoft\Graph\Beta\Generated\Models\TimeCardEvent;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\TimeCardBreak;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeCard();
$requestBody->setUserId('a3601044-a1b5-438e-b742-f78d01d68a67');
$clockInEvent = new TimeCardEvent();
$clockInEvent->setDateTime(new \DateTime('2019-03-18T00:00:00.000Z'));
$clockInEvent->setIsAtApprovedLocation(true);
$clockInEventNotes = new ItemBody();
$clockInEventNotes->setContent('Started late due to traffic in CA 237');
$clockInEventNotes->setContentType(new BodyType('text'));
$clockInEvent->setNotes($clockInEventNotes);
$requestBody->setClockInEvent($clockInEvent);
$notes = new ItemBody();
$notes->setContent('8 To 5 Inventory management');
$notes->setContentType(new BodyType('text'));
$requestBody->setNotes($notes);
$breaksTimeCardBreak1 = new TimeCardBreak();
$breaksTimeCardBreak1->setBreakId('string');
$breaksTimeCardBreak1Notes = new ItemBody();
$breaksTimeCardBreak1Notes->setContent('Lunch break');
$breaksTimeCardBreak1Notes->setContentType(new BodyType('text'));
$breaksTimeCardBreak1->setNotes($breaksTimeCardBreak1Notes);
$breaksTimeCardBreak1Start = new TimeCardEvent();
$breaksTimeCardBreak1Start->setDateTime(new \DateTime('2019-03-18T02:00:00.000Z'));
$breaksTimeCardBreak1Start->setIsAtApprovedLocation(true);
$breaksTimeCardBreak1StartNotes = new ItemBody();
$breaksTimeCardBreak1StartNotes->setContent('Reduced break to make up for lost time');
$breaksTimeCardBreak1StartNotes->setContentType(new BodyType('text'));
$breaksTimeCardBreak1Start->setNotes($breaksTimeCardBreak1StartNotes);
$breaksTimeCardBreak1->setStart($breaksTimeCardBreak1Start);
$breaksArray []= $breaksTimeCardBreak1;
$requestBody->setBreaks($breaksArray);


$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->post($requestBody)->wait();

```