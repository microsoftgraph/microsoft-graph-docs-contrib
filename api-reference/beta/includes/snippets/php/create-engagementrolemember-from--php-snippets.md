---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EngagementRoleMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EngagementRoleMember();
$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'userId\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->employeeExperience()->roles()->byEngagementRoleId('engagementRole-id')->members()->post($requestBody)->wait();

```