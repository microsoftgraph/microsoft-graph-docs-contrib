---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CalendarGroup();
$requestBody->setName('Personal events');



$requestResult = $graphServiceClient->me()->calendarGroups()->post($requestBody);


```