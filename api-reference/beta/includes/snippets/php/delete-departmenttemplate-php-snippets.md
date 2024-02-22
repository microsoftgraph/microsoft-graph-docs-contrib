---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->labels()->departments()->byDepartmentTemplateId('departmentTemplate-id')->delete()->wait();

```