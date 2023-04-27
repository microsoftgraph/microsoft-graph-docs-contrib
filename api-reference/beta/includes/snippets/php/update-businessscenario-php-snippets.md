---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BusinessScenario();
$requestBody->setOwnerAppIds(['44109254-4b2b-7a33-76ee-c890a167b295', '13eb9d8b-1d63-4153-9417-3a69ab200a78', ]);



$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->patch($requestBody);


```