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
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->employeeExperience()->roles()->byEngagementRoleId('engagementRole-id')->members()->post($requestBody)->wait();

```