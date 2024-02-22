---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->reports()->getYammerActivityUserDetailWithDate(new Date('{date}'))->get()->wait();

```