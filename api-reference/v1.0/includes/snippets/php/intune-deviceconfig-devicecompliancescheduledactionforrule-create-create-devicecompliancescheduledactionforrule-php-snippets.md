---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceComplianceScheduledActionForRule();
$requestBody->setOdataType('#microsoft.graph.deviceComplianceScheduledActionForRule');

$requestBody->setRuleName('Rule Name value');



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->scheduledActionsForRule()->post($requestBody);


```