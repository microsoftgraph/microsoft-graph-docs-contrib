---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Tag();
$requestBody->setDescription('This is an updated description.');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->tagsById('tag-id')->patch($requestBody);


```