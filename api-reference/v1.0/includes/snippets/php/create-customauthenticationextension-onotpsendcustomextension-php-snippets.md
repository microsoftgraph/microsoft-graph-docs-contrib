---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnOtpSendCustomExtension;
use Microsoft\Graph\Generated\Models\AzureAdTokenAuthentication;
use Microsoft\Graph\Generated\Models\CustomExtensionClientConfiguration;
use Microsoft\Graph\Generated\Models\HttpRequestEndpoint;
use Microsoft\Graph\Generated\Models\CustomExtensionBehaviorOnError;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnOtpSendCustomExtension();
$requestBody->setOdataType('#microsoft.graph.onOtpSendCustomExtension');
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');
$authenticationConfiguration->setResourceId('api://onotpsendcustomextension.b2c.expert/fb96de85-2abe-4b02-b45f-64ba122c509e');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$clientConfiguration = new CustomExtensionClientConfiguration();
$clientConfiguration->setTimeoutInMilliseconds(2000);
$clientConfiguration->setMaximumRetries(1);
$requestBody->setClientConfiguration($clientConfiguration);
$requestBody->setDescription('Use an external Email provider to send OTP Codes.');
$requestBody->setDisplayName('onEmailOtpSendCustomExtension');
$endpointConfiguration = new HttpRequestEndpoint();
$endpointConfiguration->setOdataType('#microsoft.graph.httpRequestEndpoint');
$endpointConfiguration->setTargetUrl('https://onotpsendcustomextension.b2c.expert/api/OnOTPCodeSendToTeamsDemo');
$requestBody->setEndpointConfiguration($endpointConfiguration);
$behaviorOnError = new CustomExtensionBehaviorOnError();
$behaviorOnError->setOdataType('microsoft.graph.customExtensionBehaviorOnError');
$requestBody->setBehaviorOnError($behaviorOnError);

$result = $graphServiceClient->identity()->customAuthenticationExtensions()->post($requestBody)->wait();

```