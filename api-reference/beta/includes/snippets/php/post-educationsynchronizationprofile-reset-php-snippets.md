---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->education()->synchronizationProfiles()->byEducationSynchronizationProfileId('educationSynchronizationProfile-id')->reset()->post()->wait();

```