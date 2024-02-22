---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivityBasedTimeoutPolicy();
$requestBody->setDefinition(['definition-value', 	]);
$requestBody->setDisplayName('displayName-value');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->activityBasedTimeoutPolicies()->post($requestBody)->wait();

```