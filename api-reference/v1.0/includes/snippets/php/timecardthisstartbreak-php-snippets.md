---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\TimeCards\Item\StartBreak\StartBreakPostRequestBody;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StartBreakPostRequestBody();
$requestBody->setIsAtApprovedLocation(true);
$notes = new ItemBody();
$notes->setContent('Starting break late to make up for late clockin');
$notes->setContentType(new BodyType('text'));
$requestBody->setNotes($notes);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->startBreak()->post($requestBody)->wait();

```