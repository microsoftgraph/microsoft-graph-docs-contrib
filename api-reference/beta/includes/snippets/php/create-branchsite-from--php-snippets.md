---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\BranchSite;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Region;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BranchSite();
$requestBody->setName('test branch - 11:50');
$requestBody->setCountry('United States');
$requestBody->setRegion(new Region('east US'));
$requestBody->setBandwidthCapacity(500);

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->post($requestBody)->wait();

```