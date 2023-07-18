---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Tag();
$requestBody->setDescription('This is an updated description.');



$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->tags()->byTagId('tag-id')->patch($requestBody);


```