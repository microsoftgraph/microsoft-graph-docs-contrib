---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->roleManagementPolicies()->byUnifiedRoleManagementPolicyId('unifiedRoleManagementPolicy-id')->effectiveRules()->get()->wait();

```