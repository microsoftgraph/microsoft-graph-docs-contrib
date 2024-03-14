---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->outlook()->tasks()->byOutlookTaskId('outlookTask-id')->delete()->wait();

```