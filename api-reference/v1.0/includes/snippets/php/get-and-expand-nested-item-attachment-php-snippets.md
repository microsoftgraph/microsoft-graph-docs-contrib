---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AttachmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = AttachmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["microsoft.graph.itemattachment/item"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->byAttachmentId('attachment-id')->get($requestConfiguration)->wait();

```