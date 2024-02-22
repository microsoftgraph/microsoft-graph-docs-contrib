---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->labels()->retentionLabels()->byRetentionLabelId('retentionLabel-id')->delete()->wait();

```