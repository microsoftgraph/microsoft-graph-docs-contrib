---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->policies()->get()->wait();

```