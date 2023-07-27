---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessagesRequestBuilderGetRequestConfiguration();
$queryParameters = MessagesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "Extensions/any(f:f/id eq 'Com.Contoso.Referral')";
$queryParameters->expand = ["Extensions($filter=id eq 'Com.Contoso.Referral')"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->get($requestConfiguration);


```