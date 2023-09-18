---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BranchSite();
$requestBody->setName('My updated branch');

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->patch($requestBody)->wait();

```