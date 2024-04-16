---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\StartBreakPostRequestBody;
use Microsoft\Graph\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StartBreakPostRequestBody();
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));
$notes->setContent('start break smaple notes');
$requestBody->setNotes($notes);
$additionalData = [
	'atAprovedLocation' => true,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->startBreak()->post($requestBody)->wait();

```