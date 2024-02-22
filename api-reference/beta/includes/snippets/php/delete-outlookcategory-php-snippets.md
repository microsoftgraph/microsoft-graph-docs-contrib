---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->outlook()->masterCategories()->byOutlookCategoryId('outlookCategory-id')->delete()->wait();

```