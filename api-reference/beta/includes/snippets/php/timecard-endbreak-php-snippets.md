---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


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