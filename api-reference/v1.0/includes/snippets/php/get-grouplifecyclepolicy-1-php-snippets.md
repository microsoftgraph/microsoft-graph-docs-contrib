---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->groupLifecyclePolicies()->byGroupLifecyclePolicyId('groupLifecyclePolicy-id')->get()->wait();

```