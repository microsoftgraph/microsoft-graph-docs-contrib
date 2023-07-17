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

$additionalData = [
		'template@odata.bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'standard\')', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->post($requestBody);


```