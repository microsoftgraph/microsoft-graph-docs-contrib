---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->get()->wait();

```