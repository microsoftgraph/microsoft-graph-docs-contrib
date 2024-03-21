---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->labels()->departments()->byDepartmentTemplateId('departmentTemplate-id')->get()->wait();

```