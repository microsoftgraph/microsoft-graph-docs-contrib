---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnAttributeCollectionSubmitCustomExtension;
use Microsoft\Graph\Generated\Models\AzureAdTokenAuthentication;
use Microsoft\Graph\Generated\Models\HttpRequestEndpoint;
use Microsoft\Graph\Generated\Models\CustomExtensionClientConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnAttributeCollectionSubmitCustomExtension();
$requestBody->setOdataType('#microsoft.graph.onAttributeCollectionSubmitCustomExtension');
$requestBody->setDisplayName('attributeCollectionSubmitName');
$requestBody->setDescription('example description');
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');
$authenticationConfiguration->setResourceId('api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$endpointConfiguration = new HttpRequestEndpoint();
$endpointConfiguration->setOdataType('#microsoft.graph.httpRequestEndpoint');
$endpointConfiguration->setTargetUrl('https://contoso.com');
$requestBody->setEndpointConfiguration($endpointConfiguration);
$clientConfiguration = new CustomExtensionClientConfiguration();
$clientConfiguration->setTimeoutInMilliseconds(2000);
$clientConfiguration->setMaximumRetries(1);
$requestBody->setClientConfiguration($clientConfiguration);

$result = $graphServiceClient->identity()->customAuthenticationExtensions()->post($requestBody)->wait();

```