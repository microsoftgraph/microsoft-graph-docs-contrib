---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Schedule\TimeCards\Item\EndBreak\EndBreakPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EndBreakPostRequestBody();
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));
$notes->setContent('end break smaple notes');
$requestBody->setNotes($notes);
$additionalData = [
	'atAprovedLocation' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->endBreak()->post($requestBody)->wait();

```