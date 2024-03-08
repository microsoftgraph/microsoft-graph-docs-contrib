---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->people()->profileCardProperties()->byProfileCardPropertyId('profileCardProperty-id')->delete()->wait();

```