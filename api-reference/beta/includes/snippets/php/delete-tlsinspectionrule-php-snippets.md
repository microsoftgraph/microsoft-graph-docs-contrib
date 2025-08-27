---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->networkAccess()->tlsInspectionPolicies()->byTlsInspectionPolicyId('tlsInspectionPolicy-id')->policyRules()->byPolicyRuleId('policyRule-id')->delete()->wait();

```