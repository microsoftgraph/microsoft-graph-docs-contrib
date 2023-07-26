---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/directoryObjects/8afc02cb-4d62-4dba-b536-9f6d73e9be26');



$graphServiceClient->applications()->byApplicationId('application-id')->owners()->ref()->post($requestBody);


```