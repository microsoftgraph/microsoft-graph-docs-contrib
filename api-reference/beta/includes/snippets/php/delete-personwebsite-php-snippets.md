---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->profile()->websites()->byPersonWebsiteId('personWebsite-id')->delete()->wait();

```