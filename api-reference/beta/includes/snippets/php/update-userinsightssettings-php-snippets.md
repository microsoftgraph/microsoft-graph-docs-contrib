---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserInsightsSettings();
$requestBody->setIsEnabled(false);



$result = $graphServiceClient->usersById('user-id')->settings()->itemInsights()->patch($requestBody);


```