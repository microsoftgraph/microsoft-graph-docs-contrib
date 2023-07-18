---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddToReviewSetPostRequestBody();
$search = new EdiscoverySearch();
$search->setId('c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7');


$requestBody->setSearch($search);
$requestBody->setAdditionalDataOptions(new AdditionalDataOptions('linkedFiles'));



$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->microsoftGraphSecurityAddToReviewSet()->post($requestBody);


```