---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemPatent();
$requestBody->setNumber('USPTO-3954432633');

$requestBody->setWebUrl('https://patents.gov/3954432633');



$result = $graphServiceClient->usersById('user-id')->profile()->patentsById('itemPatent-id')->patch($requestBody);


```