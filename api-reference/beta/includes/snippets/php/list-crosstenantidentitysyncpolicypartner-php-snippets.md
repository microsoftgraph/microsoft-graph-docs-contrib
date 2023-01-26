---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PartnersRequestBuilderGetRequestConfiguration();

$queryParameters = new PartnersRequestBuilderGetQueryParameters();
$queryParameters->select = ["tenantId"];
$queryParameters->expand = ["identitySynchronization"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->get($requestConfiguration);


```