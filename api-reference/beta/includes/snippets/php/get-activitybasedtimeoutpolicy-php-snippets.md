---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->activityBasedTimeoutPolicies()->byActivityBasedTimeoutPolicyId('activityBasedTimeoutPolicy-id')->get()->wait();

```