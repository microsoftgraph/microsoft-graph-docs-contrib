---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->applications()->byApplicationId('application-id')->tokenLifetimePolicies()->byTokenLifetimePolicyId('tokenLifetimePolicy-id')->ref()->delete()->wait();

```