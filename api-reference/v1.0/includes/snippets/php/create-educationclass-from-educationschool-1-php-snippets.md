---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->members()->byEducationUserId('educationUser-id')->ref()->delete()->wait();

```