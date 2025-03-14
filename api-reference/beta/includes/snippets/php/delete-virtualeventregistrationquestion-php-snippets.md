---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->registrationConfiguration()->questions()->byVirtualEventRegistrationQuestionBaseId('virtualEventRegistrationQuestionBase-id')->delete()->wait();

```