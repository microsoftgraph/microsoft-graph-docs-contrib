---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->tokenIssuancePolicies()->byTokenIssuancePolicyId('tokenIssuancePolicy-id')->get()->wait();

```