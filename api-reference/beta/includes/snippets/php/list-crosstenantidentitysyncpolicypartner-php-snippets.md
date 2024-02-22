---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PartnersRequestBuilderGetRequestConfiguration();
$queryParameters = PartnersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["tenantId"];
$queryParameters->expand = ["identitySynchronization"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->get($requestConfiguration)->wait();

```