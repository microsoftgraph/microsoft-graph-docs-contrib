---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageRequestBuilderGetRequestConfiguration();
$queryParameters = MessageRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["extensions($filter=id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->get($requestConfiguration);


```