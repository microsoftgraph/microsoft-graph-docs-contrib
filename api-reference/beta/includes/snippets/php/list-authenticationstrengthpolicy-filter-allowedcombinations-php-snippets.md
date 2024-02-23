---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration();
$queryParameters = AuthenticationStrengthPoliciesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "allowedCombinations/any(x:x has 'sms, password')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->get($requestConfiguration)->wait();

```