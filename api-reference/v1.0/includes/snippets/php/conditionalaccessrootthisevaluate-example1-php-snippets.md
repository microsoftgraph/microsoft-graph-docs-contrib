---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Identity\ConditionalAccess\Evaluate\EvaluatePostRequestBody;
use Microsoft\Graph\Generated\Models\UserSignIn;
use Microsoft\Graph\Generated\Models\ApplicationContext;
use Microsoft\Graph\Generated\Models\SignInConditions;
use Microsoft\Graph\Generated\Models\ConditionalAccessDevicePlatform;
use Microsoft\Graph\Generated\Models\ConditionalAccessClientApp;
use Microsoft\Graph\Generated\Models\RiskLevel;
use Microsoft\Graph\Generated\Models\InsiderRiskLevel;
use Microsoft\Graph\Generated\Models\AuthenticationFlow;
use Microsoft\Graph\Generated\Models\ConditionalAccessTransferMethods;
use Microsoft\Graph\Generated\Models\DeviceInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EvaluatePostRequestBody();
$signInIdentity = new UserSignIn();
$signInIdentity->setOdataType('#microsoft.graph.userSignIn');
$signInIdentity->setUserId('15dc174b-f34c-4588-ac45-61d6e05dce93');
$requestBody->setSignInIdentity($signInIdentity);
$signInContext = new ApplicationContext();
$signInContext->setOdataType('#microsoft.graph.applicationContext');
$signInContext->setIncludeApplications(['00000003-0000-0ff1-ce00-000000000000', 	]);
$requestBody->setSignInContext($signInContext);
$signInConditions = new SignInConditions();
$signInConditions->setDevicePlatform(new ConditionalAccessDevicePlatform('android'));
$signInConditions->setClientAppType(new ConditionalAccessClientApp('browser'));
$signInConditions->setSignInRiskLevel(new RiskLevel('high'));
$signInConditions->setUserRiskLevel(new RiskLevel('high'));
$signInConditions->setCountry('US');
$signInConditions->setIpAddress('40.77.182.32');
$signInConditions->setInsiderRiskLevel(new InsiderRiskLevel('elevated'));
$signInConditionsAuthenticationFlow = new AuthenticationFlow();
$signInConditionsAuthenticationFlow->setTransferMethod(new ConditionalAccessTransferMethods('deviceCodeFlow'));
$signInConditions->setAuthenticationFlow($signInConditionsAuthenticationFlow);
$signInConditionsDeviceInfo = new DeviceInfo();
$signInConditionsDeviceInfo->setIsCompliant(true);
$signInConditions->setDeviceInfo($signInConditionsDeviceInfo);
$requestBody->setSignInConditions($signInConditions);
$requestBody->setAppliedPoliciesOnly(true);

$result = $graphServiceClient->identity()->conditionalAccess()->evaluate()->post($requestBody)->wait();

```