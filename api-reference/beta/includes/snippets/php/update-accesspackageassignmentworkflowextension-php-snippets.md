---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageCustomWorkflowExtension();
$additionalData = [
		'@odata.type' => '#microsoft.graph.accessPackageAssignmentWorkflowExtension', 
		'displayName' => 'test_action_0124_email', 
		'description' => 'this is for graph testing only', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageCustomWorkflowExtensionsById('customCalloutExtension-id')->put($requestBody);


```