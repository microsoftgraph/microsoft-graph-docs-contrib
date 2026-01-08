---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Team;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Team();
$requestBody->setDisplayName('My Sample Team');
$requestBody->setDescription('My sample team’s description');
$requestBody->setFirstChannelName('My first channel of the sample team');
$additionalData = [
	'template@odata.bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'standard\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->post($requestBody)->wait();

```