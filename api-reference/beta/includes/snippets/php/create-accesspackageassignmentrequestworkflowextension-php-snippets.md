---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequestWorkflowExtension();
$requestBody->setOdataType('#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension');

$requestBody->setDisplayName('test_action_0124_email');

$requestBody->setDescription('this is for graph testing only');

$endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
$endpointConfiguration->setOdataType('#microsoft.graph.logicAppTriggerEndpointConfiguration');

$endpointConfiguration->setSubscriptionId('38ab2ccc-3747-4567-b36b-9478f5602f0d');

$endpointConfiguration->setResourceGroupName('test');

$endpointConfiguration->setLogicAppWorkflowName('elm-extension-email');


$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AzureAdPopTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdPopTokenAuthentication');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$callbackConfiguration = new CustomExtensionCallbackConfiguration();
$callbackConfiguration->setOdataType('microsoft.graph.customExtensionCallbackConfiguration');

$additionalData = [
		'durationBeforeTimeout' => 'PT1H', 
];
$callbackConfiguration->setAdditionalData($additionalData);



$requestBody->setCallbackConfiguration($callbackConfiguration);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageCustomWorkflowExtensions()->post($requestBody);


```