---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Team();
$requestBody->setDisplayName('My Sample Team');

$requestBody->setDescription('My Sample Team’s Description');

$requestBody->setCreatedDateTime(new DateTime('2020-03-14T11:22:17.067Z'));

$additionalData = [
		'@microsoft.graph.teamCreationMode' => 'migration', 
		'template@odata.bind' => 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->post($requestBody);


```