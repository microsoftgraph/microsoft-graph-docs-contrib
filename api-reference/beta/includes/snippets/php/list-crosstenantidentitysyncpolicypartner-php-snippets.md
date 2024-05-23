---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Policies\CrossTenantAccessPolicy\Partners\PartnersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PartnersRequestBuilderGetRequestConfiguration();
$queryParameters = PartnersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["tenantId"];
$queryParameters->expand = ["identitySynchronization"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->get($requestConfiguration)->wait();

```