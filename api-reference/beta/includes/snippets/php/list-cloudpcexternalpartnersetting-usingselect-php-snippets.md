---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ExternalPartnerSettingsRequestBuilderGetRequestConfiguration();
$queryParameters = ExternalPartnerSettingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","partnerId","enableConnection"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->get($requestConfiguration)->wait();

```