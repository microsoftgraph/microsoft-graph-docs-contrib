---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnPasswordSubmitCustomExtension;
use Microsoft\Graph\Generated\Models\HttpRequestEndpoint;
use Microsoft\Graph\Generated\Models\AzureAdTokenAuthentication;
use Microsoft\Graph\Generated\Models\CustomExtensionClientConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnPasswordSubmitCustomExtension();
$requestBody->setOdataType('#microsoft.graph.onPasswordSubmitCustomExtension');
$requestBody->setDisplayName('Legacy password validator');
$requestBody->setDescription('Validates passwords against a legacy authentication system for JIT migration');
$endpointConfiguration = new HttpRequestEndpoint();
$endpointConfiguration->setOdataType('#microsoft.graph.httpRequestEndpoint');
$endpointConfiguration->setTargetUrl('https://api.contoso.com/passwordvalidation');
$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');
$authenticationConfiguration->setResourceId('api://api.contoso.com/passwordvalidation');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$clientConfiguration = new CustomExtensionClientConfiguration();
$clientConfiguration->setTimeoutInMilliseconds(2000);
$clientConfiguration->setMaximumRetries(1);
$requestBody->setClientConfiguration($clientConfiguration);

$result = $graphServiceClient->identity()->customAuthenticationExtensions()->post($requestBody)->wait();

```