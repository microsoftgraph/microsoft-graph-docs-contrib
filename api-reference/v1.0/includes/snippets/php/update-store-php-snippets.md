---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Store();
$requestBody->setDefaultLanguageTag('en-US');



$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->patch($requestBody);


```