---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->education()->synchronizationProfiles()->byEducationSynchronizationProfileId('educationSynchronizationProfile-id')->profileStatus()->get()->wait();

```