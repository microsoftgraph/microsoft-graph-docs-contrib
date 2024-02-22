---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->labels()->authorities()->byAuthorityTemplateId('authorityTemplate-id')->delete()->wait();

```