---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ManagedDeviceMobileAppConfigurationAssignment();
$requestBody->set@odatatype('#microsoft.graph.managedDeviceMobileAppConfigurationAssignment');

$target = new AllLicensedUsersAssignmentTarget();
$target->set@odatatype('microsoft.graph.allLicensedUsersAssignmentTarget');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceAppManagement()->mobileAppConfigurations()->byMobileAppConfigurationId('managedDeviceMobileAppConfiguration-id')->assignments()->post($requestBody);


```