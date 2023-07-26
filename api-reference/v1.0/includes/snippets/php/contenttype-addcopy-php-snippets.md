---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddCopyPostRequestBody();
$requestBody->setContentType('https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101');



$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->contentTypes()->addCopy()->post($requestBody);


```