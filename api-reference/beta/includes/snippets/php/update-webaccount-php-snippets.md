---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WebAccount();
$requestBody->setWebUrl('https://github.com/innocenty.popov');



$result = $graphServiceClient->me()->profile()->webAccountsById('webAccount-id')->patch($requestBody);


```