---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookCategory();
$requestBody->setColor(new CategoryColor('preset15'));



$result = $graphServiceClient->me()->outlook()->masterCategories()->byOutlookCategoryId('outlookCategory-id')->patch($requestBody);


```