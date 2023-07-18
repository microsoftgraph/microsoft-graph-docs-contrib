---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserInsightsSettings();
$requestBody->setIsEnabled(false);



$result = $graphServiceClient->users()->byUserId('user-id')->settings()->itemInsights()->patch($requestBody);


```