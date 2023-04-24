---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReviewSet();
$requestBody->setDisplayName('My Reviewset 3');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->reviewSets()->post($requestBody);


```