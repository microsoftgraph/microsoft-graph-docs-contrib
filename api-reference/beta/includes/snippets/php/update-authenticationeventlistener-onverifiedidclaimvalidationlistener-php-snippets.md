---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OnVerifiedIdClaimValidationListener;
use Microsoft\Graph\Beta\Generated\Models\OnVerifiedIdClaimValidationCustomExtensionHandler;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionOverwriteConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionClientConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CustomExtensionBehaviorOnError;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnVerifiedIdClaimValidationListener();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationListener');
$requestBody->setDisplayName('Verified ID Claim Validation Listener (updated)');
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
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->byAuthenticationEventListenerId('authenticationEventListener-id')->patch($requestBody)->wait();

```