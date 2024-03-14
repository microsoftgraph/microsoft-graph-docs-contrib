---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->profile()->anniversaries()->byPersonAnnualEventId('personAnnualEvent-id')->get()->wait();

```