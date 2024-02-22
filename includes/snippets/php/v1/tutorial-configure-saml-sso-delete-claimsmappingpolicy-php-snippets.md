---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->claimsMappingPolicies()->byClaimsMappingPolicyId('claimsMappingPolicy-id')->delete()->wait();

```