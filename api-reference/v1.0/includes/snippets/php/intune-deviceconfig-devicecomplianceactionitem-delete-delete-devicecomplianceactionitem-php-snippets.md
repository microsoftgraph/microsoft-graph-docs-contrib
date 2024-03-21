---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->scheduledActionsForRule()->byDeviceComplianceScheduledActionForRuleId('deviceComplianceScheduledActionForRule-id')->scheduledActionConfigurations()->byDeviceComplianceActionItemId('deviceComplianceActionItem-id')->delete()->wait();

```