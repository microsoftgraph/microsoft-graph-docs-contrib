---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyToDefaultContentLocationPostRequestBody();
$sourceFile = new ItemReference();
$sourceFileSharepointIds = new SharepointIds();
$sourceFileSharepointIds->setListId('e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0');

$sourceFileSharepointIds->setListItemId('2');


$sourceFile->setSharepointIds($sourceFileSharepointIds);

$requestBody->setSourceFile($sourceFile);
$requestBody->setDestinationFileName('newname.txt');



$graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->copyToDefaultContentLocation()->post($requestBody);


```