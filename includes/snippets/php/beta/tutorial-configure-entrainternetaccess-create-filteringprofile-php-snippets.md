---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\FilteringProfile;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Status;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\PolicyLink;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringProfile();
$requestBody->setName('Security Profile for UserA');
$requestBody->setState(new Status('enabled'));
$requestBody->setPriority(100);
$requestBody->setPolicies([	]);

$result = $graphServiceClient->networkAccess()->filteringProfiles()->post($requestBody)->wait();

```