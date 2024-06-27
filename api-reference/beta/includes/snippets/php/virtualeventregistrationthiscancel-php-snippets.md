---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->registrations()->byVirtualEventRegistrationId('virtualEventRegistration-id')->cancel()->post()->wait();

```