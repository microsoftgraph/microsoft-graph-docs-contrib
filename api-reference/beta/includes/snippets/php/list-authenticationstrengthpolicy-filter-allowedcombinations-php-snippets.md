---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Policies\AuthenticationStrengthPolicies\AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration();
$queryParameters = AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "allowedCombinations/any(x:x has 'sms, password')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->get($requestConfiguration)->wait();

```