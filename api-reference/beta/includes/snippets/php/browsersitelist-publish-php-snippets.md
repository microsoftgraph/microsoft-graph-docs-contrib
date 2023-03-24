---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PublishPostRequestBody();
$requestBody->setRevision('1.0');



$requestResult = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->publish()->post($requestBody);


```