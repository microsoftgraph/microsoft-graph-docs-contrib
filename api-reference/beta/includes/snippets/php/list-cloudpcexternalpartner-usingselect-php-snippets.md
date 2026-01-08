---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ExternalPartners\ExternalPartnersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ExternalPartnersRequestBuilderGetRequestConfiguration();
$queryParameters = ExternalPartnersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","partnerId","enableConnection"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartners()->get($requestConfiguration)->wait();

```