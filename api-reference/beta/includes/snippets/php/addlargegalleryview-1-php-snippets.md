---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddLargeGalleryViewPostRequestBody();
$requestBody->setClientContext('785f4929-92ca-497b-863f-c778c77c9758');



$result = $graphServiceClient->communications()->callsById('call-id')->addLargeGalleryView()->post($requestBody);


```