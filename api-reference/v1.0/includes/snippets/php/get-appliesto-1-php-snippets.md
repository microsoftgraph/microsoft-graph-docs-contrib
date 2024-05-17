---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->claimsMappingPolicies()->byClaimsMappingPolicyId('claimsMappingPolicy-id')->appliesTo()->get()->wait();

```