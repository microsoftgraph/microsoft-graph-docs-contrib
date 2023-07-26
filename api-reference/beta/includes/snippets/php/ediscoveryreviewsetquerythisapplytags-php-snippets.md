---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyTagsPostRequestBody();
$tagsToAddEdiscoveryReviewTag1 = new EdiscoveryReviewTag();
$tagsToAddEdiscoveryReviewTag1->setId('d3d99dc704a74801b792b3e1e722aa0d');


$tagsToAddArray []= $tagsToAddEdiscoveryReviewTag1;
$requestBody->setTagsToAdd($tagsToAddArray);




$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->queries()->byEdiscoveryReviewSetQueryId('ediscoveryReviewSetQuery-id')->microsoftGraphSecurityApplyTags()->post($requestBody);


```