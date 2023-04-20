---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemAddress();
$requestBody->setAllowedAudiences(new AllowedAudiences('me'));

$requestBody->setDisplayName('Secret Hideout');



$result = $graphServiceClient->usersById('user-id')->profile()->addressesById('itemAddress-id')->patch($requestBody);


```