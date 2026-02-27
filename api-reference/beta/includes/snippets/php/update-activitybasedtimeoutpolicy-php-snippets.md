---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ActivityBasedTimeoutPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivityBasedTimeoutPolicy();
$requestBody->setDisplayName('Idle timeout for all apps');

$result = $graphServiceClient->policies()->activityBasedTimeoutPolicies()->byActivityBasedTimeoutPolicyId('activityBasedTimeoutPolicy-id')->patch($requestBody)->wait();

```