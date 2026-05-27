---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnVerifiedIdClaimValidationListener;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Beta\Generated\Models\OnVerifiedIdClaimValidationCustomExtensionHandler;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionOverwriteConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionClientConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionBehaviorOnError;
use Microsoft\Graph\Beta\Generated\Models\OnVerifiedIdClaimValidationCustomExtension;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnVerifiedIdClaimValidationListener();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationListener');
$requestBody->setDisplayName('Verified ID Claim Validation Listener');
$requestBody->setPriority(500);
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$conditionsApplications->setIncludeAllApplications(false);
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('63856651-13d9-4784-9abf-20758d509e19');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

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

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```