---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnFraudProtectionLoadStartListener;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Generated\Models\OnFraudProtectionLoadStartExternalUsersAuthHandler;
use Microsoft\Graph\Generated\Models\FraudProtectionProviderConfiguration;
use Microsoft\Graph\Generated\Models\ArkoseFraudProtectionProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnFraudProtectionLoadStartListener();
$requestBody->setOdataType('#microsoft.graph.onFraudProtectionLoadStartListener');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('0001111-aaaa-2222-bbbb-3333cccc4444');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$handler = new OnFraudProtectionLoadStartExternalUsersAuthHandler();
$handler->setOdataType('#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler');
$handlerSignUp = new FraudProtectionProviderConfiguration();
$handlerSignUp->setOdataType('#microsoft.graph.fraudProtectionProviderConfiguration');
$handlerSignUpFraudProtectionProvider = new ArkoseFraudProtectionProvider();
$handlerSignUpFraudProtectionProvider->setOdataType('#microsoft.graph.arkoseFraudProtectionProvider');
$handlerSignUpFraudProtectionProvider->setId('6fedd01b-0afb-4a07-967f-d1ccbd81102b');
$handlerSignUp->setFraudProtectionProvider($handlerSignUpFraudProtectionProvider);
$handler->setSignUp($handlerSignUp);
$requestBody->setHandler($handler);

$result = $graphServiceClient->identity()->authenticationEventListeners()->post($requestBody)->wait();

```