---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AgreementRequestBuilderGetRequestConfiguration();
$queryParameters = AgreementRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["files"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreementsById('agreement-id')->get($requestConfiguration);


```