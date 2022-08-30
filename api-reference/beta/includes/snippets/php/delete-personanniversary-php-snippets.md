---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->profile()->anniversaries()->byPersonAnnualEventId('personAnnualEvent-id')->delete()->wait();

```