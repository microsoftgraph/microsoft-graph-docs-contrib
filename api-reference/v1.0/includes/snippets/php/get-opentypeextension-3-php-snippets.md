---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MessageRequestBuilderGetRequestConfiguration();
$queryParameters = MessageRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["extensions($filter=id%20eq%20'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messagesById('message-id')->get($requestConfiguration);


```