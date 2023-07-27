---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BranchSite();
$requestBody->setName('test branch - 11:50');

$requestBody->setCountry('United States');

$requestBody->setRegion(new Region('east US'));

$requestBody->setBandwidthCapacity(500);



$result = $graphServiceClient->networkAccess()->connectivity()->branches()->post($requestBody);


```