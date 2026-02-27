---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Identity\ConditionalAccess\Evaluate\EvaluatePostRequestBody;
use Microsoft\Graph\Generated\Models\ServicePrincipalSignIn;
use Microsoft\Graph\Generated\Models\ApplicationContext;
use Microsoft\Graph\Generated\Models\SignInConditions;
use Microsoft\Graph\Generated\Models\RiskLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EvaluatePostRequestBody();
$signInIdentity = new ServicePrincipalSignIn();
$signInIdentity->setOdataType('#microsoft.graph.servicePrincipalSignIn');
$signInIdentity->setServicePrincipalId('c65b94a5-0049-439a-a6fd-bce307077730');
$requestBody->setSignInIdentity($signInIdentity);
$signInContext = new ApplicationContext();
$signInContext->setOdataType('#microsoft.graph.applicationContext');
$signInContext->setIncludeApplications(['00000003-0000-0ff1-ce00-000000000000', 	]);
$requestBody->setSignInContext($signInContext);
$signInConditions = new SignInConditions();
$signInConditions->setServicePrincipalRiskLevel(new RiskLevel('high'));
$signInConditions->setCountry('CA');
$signInConditions->setIpAddress('40.77.182.32');
$requestBody->setSignInConditions($signInConditions);
$requestBody->setAppliedPoliciesOnly(true);

$result = $graphServiceClient->identity()->conditionalAccess()->evaluate()->post($requestBody)->wait();

```