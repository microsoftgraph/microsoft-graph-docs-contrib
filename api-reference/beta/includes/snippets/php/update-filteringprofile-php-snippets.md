---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringProfile();
$requestBody->setState(new Status('disabled'));

$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->patch($requestBody)->wait();

```