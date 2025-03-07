---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Identity\CustomAuthenticationExtensions\CustomAuthenticationExtensionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CustomAuthenticationExtensionsRequestBuilderGetRequestConfiguration();
$queryParameters = CustomAuthenticationExtensionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isOf('microsoft.graph.onTokenIssuanceStartCustomExtension')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->customAuthenticationExtensions()->get($requestConfiguration)->wait();

```