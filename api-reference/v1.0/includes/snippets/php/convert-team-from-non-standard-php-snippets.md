---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Team();
$requestBody->setDisplayName('My Class Team');

$requestBody->setDescription('My Class Team’s Description');

$additionalData = [
		'template@odata.bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'educationClass\')', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->post($requestBody);


```