---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomCalloutExtension();
$requestBody->set@odatatype('#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension');

$requestBody->setDisplayName('test_action_0124_email');

$requestBody->setDescription('this is for graph testing only');

$endpointConfiguration = new CustomExtensionEndpointConfiguration();
$endpointConfiguration->set@odatatype('#microsoft.graph.logicAppTriggerEndpointConfiguration');

$additionalData = [
		'subscriptionId' => '38ab2ccc-3747-4567-b36b-9478f5602f0d', 
		'resourceGroupName' => 'test', 
		'logicAppWorkflowName' => 'elm-extension-email', 
];
$endpointConfiguration->setAdditionalData($additionalData);



$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new CustomExtensionAuthenticationConfiguration();
$authenticationConfiguration->set@odatatype('#microsoft.graph.azureAdPopTokenAuthentication');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$additionalData = [
		'callbackConfiguration' => $requestBody = new CallbackConfiguration();
$		requestBody->set@odatatype('microsoft.graph.customExtensionCallbackConfiguration');

$		requestBody->setDurationBeforeTimeout('PT1H');


$requestBody->setCallbackConfiguration($callbackConfiguration);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageCustomWorkflowExtensions()->post($requestBody);


```