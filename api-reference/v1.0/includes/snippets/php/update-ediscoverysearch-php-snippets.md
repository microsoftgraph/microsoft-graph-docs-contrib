---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoverySearch();
$requestBody->setDisplayName('Teams search');



$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->searchesById('ediscoverySearch-id')->patch($requestBody);


```