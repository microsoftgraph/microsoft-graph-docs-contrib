---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAccessPackageWorkflowExtension();
$requestBody->setDisplayName('test_action_0124');

$requestBody->setDescription('this is for graph testing only');

$endpointConfiguration = new LogicAppTriggerEndpointConfiguration();
$endpointConfiguration->setOdataType('#microsoft.graph.logicAppTriggerEndpointConfiguration');

$endpointConfiguration->setSubscriptionId('38ab2ccc-3747-4567-b36b-9478f5602f0d');

$endpointConfiguration->setResourceGroupName('EMLogicApp');

$endpointConfiguration->setLogicAppWorkflowName('customextension_test');


$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');

$authenticationConfiguration->setResourceId('f604bd15-f785-4309-ad7c-6fad18ddb6cb');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->customAccessPackageWorkflowExtensions()->post($requestBody);


```