---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->labels()->authorities()->byAuthorityTemplateId('authorityTemplate-id')->delete()->wait();

```