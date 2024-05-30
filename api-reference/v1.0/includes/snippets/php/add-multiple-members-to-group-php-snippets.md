---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$additionalData = [
	'members@odata.bind' => [
'https://graph.microsoft.com/v1.0/directoryObjects/{id}', 'https://graph.microsoft.com/v1.0/directoryObjects/{id}', 'https://graph.microsoft.com/v1.0/directoryObjects/{id}', ],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```