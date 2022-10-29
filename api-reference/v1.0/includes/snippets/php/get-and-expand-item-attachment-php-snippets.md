---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AttachmentRequestBuilderGetRequestConfiguration();

$queryParameters = new AttachmentRequestBuilderGetQueryParameters();
$queryParameters->expand = ["microsoft.graph.itemattachment/item"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->messagesById('message-id')->attachmentsById('attachment-id')->get($requestConfiguration);


```