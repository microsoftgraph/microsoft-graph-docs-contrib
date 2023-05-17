---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomAccessPackageWorkflowExtension();
$requestBody->setDisplayName('test_action_0124');

$requestBody->setDescription('this is for graph testing only');

$endpointConfiguration = new CustomExtensionEndpointConfiguration();
$endpointConfiguration->set@odatatype('#microsoft.graph.logicAppTriggerEndpointConfiguration');

$additionalData = [
		'subscriptionId' => '38ab2ccc-3747-4567-b36b-9478f5602f0d', 
		'resourceGroupName' => 'EMLogicApp', 
		'logicAppWorkflowName' => 'customextension_test', 
];
$endpointConfiguration->setAdditionalData($additionalData);



$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new CustomExtensionAuthenticationConfiguration();
$authenticationConfiguration->set@odatatype('#microsoft.graph.azureAdTokenAuthentication');

$additionalData = [
		'resourceId' => 'f604bd15-f785-4309-ad7c-6fad18ddb6cb', 
];
$authenticationConfiguration->setAdditionalData($additionalData);



$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->customAccessPackageWorkflowExtensions()->post($requestBody);


```