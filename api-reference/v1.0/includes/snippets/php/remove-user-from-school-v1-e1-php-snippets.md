---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->education()->schools()->byEducationSchoolId('educationSchool-id')->users()->byEducationUserId('educationUser-id')->ref()->delete()->wait();

```