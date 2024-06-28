---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Schedule\TimeCards\ClockIn\ClockInPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClockInPostRequestBody();
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));
$notes->setContent('clock in notes');
$requestBody->setNotes($notes);
$additionalData = [
	'atAprovedLocation' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->clockIn()->post($requestBody)->wait();

```