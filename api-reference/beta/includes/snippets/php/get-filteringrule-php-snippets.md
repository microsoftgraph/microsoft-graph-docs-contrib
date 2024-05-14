---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->networkAccess()->filteringPolicies()->byFilteringPolicyId('filteringPolicy-id')->policyRules()->byPolicyRuleId('policyRule-id')->get()->wait();

```