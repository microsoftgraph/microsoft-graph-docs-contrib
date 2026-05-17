---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Presence\SetManualLocation\SetManualLocationPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\WorkLocationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetManualLocationPostRequestBody();
$requestBody->setWorkLocationType(new WorkLocationType('office'));
$requestBody->setPlaceId('eb706f15-137e-4722-b4d1-b601481d9251');

$graphServiceClient->me()->presence()->setManualLocation()->post($requestBody)->wait();

```