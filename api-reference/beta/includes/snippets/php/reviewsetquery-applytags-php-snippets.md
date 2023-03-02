---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ApplyTagsPostRequestBody();
$tagsToAddTag1 = new Tag();
$tagsToAddTag1->setId('b4798d14-748d-468e-a1ec-96a2b1d49677');


$tagsToAddArray []= $tagsToAddTag1;
$requestBody->setTagsToAdd($tagsToAddArray);




$graphServiceClient->compliance()->ediscovery()->casesById('case-id')->reviewSetsById('reviewSet-id')->queriesById('reviewSetQuery-id')->ediscoveryApplyTags()->post($requestBody);


```