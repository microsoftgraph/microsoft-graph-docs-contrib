---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ActivityBasedTimeoutPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivityBasedTimeoutPolicy();
$requestBody->setDisplayName('Idle timeout for all apps');

$result = $graphServiceClient->policies()->activityBasedTimeoutPolicies()->byActivityBasedTimeoutPolicyId('activityBasedTimeoutPolicy-id')->patch($requestBody)->wait();

```