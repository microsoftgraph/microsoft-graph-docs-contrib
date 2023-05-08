---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AttachmentRequestBuilderGetRequestConfiguration();
$queryParameters = AttachmentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["microsoft.graph.itemattachment/item"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messagesById('message-id')->attachmentsById('attachment-id')->get($requestConfiguration);


```