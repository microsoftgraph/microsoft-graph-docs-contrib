---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Team();
$requestBody->setDisplayName('My Class Team');
$requestBody->setDescription('My Class Team’s Description');
$additionalData = [
	'template@odata.bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'educationClass\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->post($requestBody)->wait();

```