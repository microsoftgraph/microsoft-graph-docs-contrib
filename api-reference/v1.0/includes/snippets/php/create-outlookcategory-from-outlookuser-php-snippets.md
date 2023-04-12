---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OutlookCategory();
$requestBody->setDisplayName('Project expenses');

$requestBody->setColor(new CategoryColor('preset9'));



$result = $graphServiceClient->me()->outlook()->masterCategories()->post($requestBody);


```