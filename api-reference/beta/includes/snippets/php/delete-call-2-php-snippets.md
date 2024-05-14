---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->delete()->wait();

```