---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CustomAuthenticationExtension;
use Microsoft\Graph\Generated\Models\HttpRequestEndpoint;
use Microsoft\Graph\Generated\Models\AzureAdTokenAuthentication;
use Microsoft\Graph\Generated\Models\CustomExtensionClientConfiguration;
use Microsoft\Graph\Generated\Models\CustomExtensionBehaviorOnError;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomAuthenticationExtension();
$requestBody->setOdataType('#microsoft.graph.onVerifiedIdClaimValidationCustomExtension');
$requestBody->setDisplayName('Verified ID Claim Validation');
$requestBody->setDescription('Validate claims from a Verified ID presentation');
$endpointConfiguration = new HttpRequestEndpoint();
$endpointConfiguration->setOdataType('#microsoft.graph.httpRequestEndpoint');
$endpointConfiguration->setTargetUrl('https://contoso.azurewebsites.net/api/verifiedIdClaimValidation');
$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');
$authenticationConfiguration->setResourceId('api://contoso.azurewebsites.net/verifiedIdClaimValidation');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$clientConfiguration = new CustomExtensionClientConfiguration();
$clientConfiguration->setTimeoutInMilliseconds(2000);
$clientConfiguration->setMaximumRetries(1);
$requestBody->setClientConfiguration($clientConfiguration);
$behaviorOnError = new CustomExtensionBehaviorOnError();
$behaviorOnError->setOdataType('#microsoft.graph.customExtensionBehaviorOnError');
$requestBody->setBehaviorOnError($behaviorOnError);

$result = $graphServiceClient->identity()->customAuthenticationExtensions()->post($requestBody)->wait();

```