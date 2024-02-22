---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->education()->schools()->byEducationSchoolId('educationSchool-id')->administrativeUnit()->get()->wait();

```