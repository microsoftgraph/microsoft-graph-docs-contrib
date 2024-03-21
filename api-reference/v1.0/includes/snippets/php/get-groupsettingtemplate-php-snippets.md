---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->groupSettingTemplates()->byGroupSettingTemplateId('groupSettingTemplate-id')->get()->wait();

```