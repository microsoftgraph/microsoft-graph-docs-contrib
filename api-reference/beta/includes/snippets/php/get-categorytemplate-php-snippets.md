---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->labels()->categories()->byCategoryTemplateId('categoryTemplate-id')->get()->wait();

```