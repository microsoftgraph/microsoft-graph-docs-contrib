---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\TimeCards\Item\ClockOut\ClockOutPostRequestBody;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClockOutPostRequestBody();
$requestBody->setIsAtApprovedLocation(true);
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));
$notes->setContent('clocking out');
$requestBody->setNotes($notes);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->clockOut()->post($requestBody)->wait();

```