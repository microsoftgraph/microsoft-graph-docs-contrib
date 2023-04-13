---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomCalloutExtension();
$additionalData = [
		'value' => $requestBody = new Value();
$		requestBody->set@odatatype('#microsoft.graph.accessPackageAssignmentWorkflowExtension');

$		requestBody->setDisplayName('test_action_0127_email');

$		requestBody->setDescription('this is for graph testing only');

$endpointConfiguration = new EndpointConfiguration();
$		endpointConfiguration->set@odatatype('#microsoft.graph.logicAppTriggerEndpointConfiguration');

$		endpointConfiguration->setSubscriptionId('38ab2ccc-3747-4567-b36b-9478f5602f0d');

$		endpointConfiguration->setResourceGroupName('test');

$		endpointConfiguration->setLogicAppWorkflowName('elm-extension-email');


$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AuthenticationConfiguration();
$		authenticationConfiguration->set@odatatype('#microsoft.graph.azureAdPopTokenAuthentication');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);

$requestBody->setValue($value);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogsById('accessPackageCatalog-id')->accessPackageCustomWorkflowExtensions()->post($requestBody);


```