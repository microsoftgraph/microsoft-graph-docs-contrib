---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ReferenceAttachment;
use Microsoft\Graph\Beta\Generated\Models\ReferenceAttachmentProvider;
use Microsoft\Graph\Beta\Generated\Models\ReferenceAttachmentPermission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceAttachment();
$requestBody->setOdataType('#microsoft.graph.referenceAttachment');
$requestBody->setName('Personal pictures');
$requestBody->setSourceUrl('https://contoso.com/personal/mario_contoso_net/Documents/Pics');
$requestBody->setProviderType(new ReferenceAttachmentProvider('oneDriveConsumer'));
$requestBody->setPermission(new ReferenceAttachmentPermission('edit'));
$requestBody->setIsFolder(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody)->wait();

```