---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryReviewTag();
$requestBody->setDisplayName('My tag API 2');

$requestBody->setDescription('Use Graph API to create tags (updated)');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->tagsById('ediscoveryReviewTag-id')->patch($requestBody);


```