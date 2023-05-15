---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DismissPostRequestBody();
$requestBody->setDismissReason('Application is no longer needed.');



$result = $graphServiceClient->directory()->recommendationsById('recommendation-id')->impactedResourcesById('impactedResource-id')->dismiss()->post($requestBody);


```