---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BranchSite;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BranchSite();
$requestBody->setName('My updated branch');

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->patch($requestBody)->wait();

```