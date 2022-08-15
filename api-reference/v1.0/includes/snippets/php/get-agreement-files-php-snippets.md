---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AgreementRequestBuilderGetRequestConfiguration();

$queryParameters = new AgreementRequestBuilderGetQueryParameters();
$queryParameters->expand = ["files"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->termsOfUse()->agreementsById('agreement-id')->get($requestConfiguration);


```