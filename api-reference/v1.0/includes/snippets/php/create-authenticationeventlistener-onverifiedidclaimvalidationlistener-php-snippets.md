---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnVerifiedIdClaimValidationListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Generated\Models\OnVerifiedIdClaimValidationCustomExtensionHandler;
use Microsoft\Graph\Generated\Models\CustomExtensionOverwriteConfiguration;
use Microsoft\Graph\Generated\Models\CustomExtensionClientConfiguration;
use Microsoft\Graph\Generated\Models\CustomExtensionBehaviorOnError;
use Microsoft\Graph\Generated\Models\OnVerifiedIdClaimValidationCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnVerifiedIdClaimValidationListener();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationListener');
$requestBody->setDisplayName('Verified ID Claim Validation Listener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('63856651-13d9-4784-9abf-20758d509e19');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$additionalData = [
'includeAllApplications' => false,
];
$conditionsApplications->setAdditionalData($additionalData);
$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$requestBody->setAuthenticationEventsFlowId('5a8e8f57-82b2-4cbf-b145-3e6e0c154897');
$handler = new OnVerifiedIdClaimValidationCustomExtensionHandler();
$handler->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler');
$handlerConfiguration = new CustomExtensionOverwriteConfiguration();
$handlerConfiguration->setOdataType('#microsoft.graph.customExtensionOverwriteConfiguration');
$handlerConfigurationClientConfiguration = new CustomExtensionClientConfiguration();
$handlerConfigurationClientConfiguration->setOdataType('#microsoft.graph.customExtensionClientConfiguration');
$handlerConfigurationClientConfiguration->setMaximumRetries(1);
$handlerConfigurationClientConfiguration->setTimeoutInMilliseconds(2000);
$handlerConfiguration->setClientConfiguration($handlerConfigurationClientConfiguration);
$handlerConfigurationBehaviorOnError = new CustomExtensionBehaviorOnError();
$handlerConfigurationBehaviorOnError->setOdataType('#microsoft.graph.customExtensionBehaviorOnError');
$handlerConfiguration->setBehaviorOnError($handlerConfigurationBehaviorOnError);
$handler->setConfiguration($handlerConfiguration);
$handlerCustomExtension = new OnVerifiedIdClaimValidationCustomExtension();
$handlerCustomExtension->setId('6a0a3429-be77-0aed-951e-1c8aed62bf8a');
$handler->setCustomExtension($handlerCustomExtension);
$requestBody->setHandler($handler);
$additionalData = [
'priority' => 500,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```