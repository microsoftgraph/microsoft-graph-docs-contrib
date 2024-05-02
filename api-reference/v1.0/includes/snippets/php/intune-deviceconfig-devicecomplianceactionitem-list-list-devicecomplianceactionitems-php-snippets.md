---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->scheduledActionsForRule()->byDeviceComplianceScheduledActionForRuleId('deviceComplianceScheduledActionForRule-id')->scheduledActionConfigurations()->get()->wait();

```