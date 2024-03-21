---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->triggers()->retentionEvents()->byRetentionEventId('retentionEvent-id')->delete()->wait();

```