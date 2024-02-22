---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration();
$queryParameters = FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "userConsentRequests/any(u:u/status eq 'InProgress')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->appConsent()->appConsentRequests()->filterByCurrentUserWithOn('reviewer', )->get($requestConfiguration)->wait();

```