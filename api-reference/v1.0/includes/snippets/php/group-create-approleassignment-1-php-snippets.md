---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppRoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('7679d9a4-2323-44cd-b5c2-673ec88d8b12');
$requestBody->setResourceId('076e8b57-bac8-49d7-9396-e3449b685055');
$requestBody->setAppRoleId('00000000-0000-0000-0000-000000000000');

$result = $graphServiceClient->groups()->byGroupId('group-id')->appRoleAssignments()->post($requestBody)->wait();

```