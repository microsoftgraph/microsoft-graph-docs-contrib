---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddCopyFromContentTypeHubPostRequestBody();
$requestBody->setContentTypeId('0x0101');



$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->contentTypes()->addCopyFromContentTypeHub()->post($requestBody);


```