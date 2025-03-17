---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Schedule\TimeCards\Item\StartBreak\StartBreakPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StartBreakPostRequestBody();
$requestBody->setIsAtApprovedLocation(true);
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));
$notes->setContent('starting break');
$requestBody->setNotes($notes);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->startBreak()->post($requestBody)->wait();

```