---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TargetedManagedAppPolicyAssignment();
$requestBody->set@odatatype('#microsoft.graph.targetedManagedAppPolicyAssignment');

$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->set@odatatype('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$target->setCollectionId('Collection Id value');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->assignments()->byAssignmentId('targetedManagedAppPolicyAssignment-id')->patch($requestBody);


```