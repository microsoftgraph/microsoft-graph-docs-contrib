---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ExternalPartnerSettingsRequestBuilderGetRequestConfiguration();

$queryParameters = new ExternalPartnerSettingsRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","partnerId","enableConnection"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->get($requestConfiguration);


```