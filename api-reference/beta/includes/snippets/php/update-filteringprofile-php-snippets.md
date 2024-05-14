---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FilteringProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringProfile();
$requestBody->setState(new Status('disabled'));

$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->patch($requestBody)->wait();

```