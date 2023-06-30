---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceAttachment();
$requestBody->set@odatatype('#microsoft.graph.referenceAttachment');

$requestBody->setName('Personal pictures');

$requestBody->setSourceUrl('https://contoso.com/personal/mario_contoso_net/Documents/Pics');

$requestBody->setProviderType(new ReferenceAttachmentProvider('onedriveconsumer'));

$requestBody->setPermission(new ReferenceAttachmentPermission('edit'));

$requestBody->setIsFolder(true);



$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody);


```