---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Contoso Life v2.0');
$requestBody->setDisplayName('Contoso Life Renewed');

$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```