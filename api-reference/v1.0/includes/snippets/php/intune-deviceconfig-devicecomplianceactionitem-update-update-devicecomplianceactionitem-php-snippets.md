---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceComplianceActionItem();
$requestBody->set@odatatype('#microsoft.graph.deviceComplianceActionItem');

$requestBody->setGracePeriodHours(0);

$requestBody->setActionType(new DeviceComplianceActionType('notification'));

$requestBody->setNotificationTemplateId('Notification Template Id value');

$requestBody->setNotificationMessageCCList(['Notification Message CCList value', ]);



$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicieId('deviceCompliancePolicy-id')->scheduledActionsForRule()->byScheduledActionsForRule()Id('deviceComplianceScheduledActionForRule-id')->scheduledActionConfigurations()->byScheduledActionConfigurationId('deviceComplianceActionItem-id')->patch($requestBody);


```