---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$additionalData = [
	'members@odata.bind' => [
'https://graph.microsoft.com/beta/directoryObjects/{id}', 'https://graph.microsoft.com/beta/directoryObjects/{id}', 'https://graph.microsoft.com/beta/directoryObjects/{id}', ],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```