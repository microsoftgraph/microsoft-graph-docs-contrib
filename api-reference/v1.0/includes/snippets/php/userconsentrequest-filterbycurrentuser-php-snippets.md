---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration();
$queryParameters = FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " (status eq 'Completed')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->appConsent()->appConsentRequests()->byAppConsentRequestId('appConsentRequest-id')->userConsentRequests()->filterByCurrentUserWithOn('reviewer', )->get($requestConfiguration)->wait();

```