---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AppliesToRequestBuilderGetRequestConfiguration();
$queryParameters = AppliesToRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","createdDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->appManagementPolicies()->byAppManagementPolicyId('appManagementPolicy-id')->appliesTo()->get($requestConfiguration)->wait();

```