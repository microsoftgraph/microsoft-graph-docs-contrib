---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->profile()->educationalActivities()->byEducationalActivityId('educationalActivity-id')->get()->wait();

```