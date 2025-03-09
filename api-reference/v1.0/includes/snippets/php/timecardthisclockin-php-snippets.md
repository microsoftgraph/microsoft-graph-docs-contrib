---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\TimeCards\ClockIn\ClockInPostRequestBody;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClockInPostRequestBody();
$requestBody->setIsAtApprovedLocation(true);
$notes = new ItemBody();
$notes->setContent('Started late due to traffic');
$notes->setContentType(new BodyType('text'));
$requestBody->setNotes($notes);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->clockIn()->post($requestBody)->wait();

```