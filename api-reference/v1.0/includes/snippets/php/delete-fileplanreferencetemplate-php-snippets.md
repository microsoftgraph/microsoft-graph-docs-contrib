---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->labels()->filePlanReferences()->byFilePlanReferenceTemplateId('filePlanReferenceTemplate-id')->delete()->wait();

```