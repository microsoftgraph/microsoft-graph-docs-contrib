---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TargetedManagedAppPolicyAssignment();
$requestBody->setOdataType('#microsoft.graph.targetedManagedAppPolicyAssignment');

$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$target->setCollectionId('Collection Id value');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->assignments()->byTargetedManagedAppPolicyAssignmentId('targetedManagedAppPolicyAssignment-id')->patch($requestBody);


```