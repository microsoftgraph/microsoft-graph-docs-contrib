---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceComplianceActionItem();
$requestBody->setOdataType('#microsoft.graph.deviceComplianceActionItem');

$requestBody->setGracePeriodHours(0);

$requestBody->setActionType(new DeviceComplianceActionType('notification'));

$requestBody->setNotificationTemplateId('Notification Template Id value');

$requestBody->setNotificationMessageCCList(['Notification Message CCList value', 	]);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->scheduledActionsForRule()->byDeviceComplianceScheduledActionForRuleId('deviceComplianceScheduledActionForRule-id')->scheduledActionConfigurations()->byDeviceComplianceActionItemId('deviceComplianceActionItem-id')->patch($requestBody);


```