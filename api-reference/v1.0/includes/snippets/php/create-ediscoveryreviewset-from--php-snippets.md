---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryReviewSet();
$requestBody->setDisplayName('My review set 2');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->reviewSets()->post($requestBody);


```