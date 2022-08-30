---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->onenote()->sections()->byOnenoteSectionId('onenoteSection-id')->pages()->get()->wait();

```