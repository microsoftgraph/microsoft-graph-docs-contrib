---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Team;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Team();
$requestBody->setDisplayName('My Sample Team');
$requestBody->setDescription('My Sample Team\'s Description');
$requestBody->setFirstChannelName('My First Channel of the sample team');
$additionalData = [
	'template@odata.bind' => 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->post($requestBody)->wait();

```