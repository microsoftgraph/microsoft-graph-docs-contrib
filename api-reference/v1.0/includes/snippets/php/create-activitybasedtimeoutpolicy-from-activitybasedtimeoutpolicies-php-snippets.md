---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ActivityBasedTimeoutPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivityBasedTimeoutPolicy();
$requestBody->setDefinition(['{\"ActivityBasedTimeoutPolicy\":{\"Version\":1,\"ApplicationPolicies\":[{\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"00:05:00\"}]}}', 	]);
$requestBody->setDisplayName('activityBasedTimeoutPolicies test');
$requestBody->setIsOrganizationDefault(true);

$result = $graphServiceClient->policies()->activityBasedTimeoutPolicies()->post($requestBody)->wait();

```