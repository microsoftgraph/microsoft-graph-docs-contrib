---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directorySettingTemplates()->byDirectorySettingTemplateId('directorySettingTemplate-id')->get()->wait();

```