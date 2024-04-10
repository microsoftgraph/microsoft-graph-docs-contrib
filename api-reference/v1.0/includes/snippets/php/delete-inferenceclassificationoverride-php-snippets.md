---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->inferenceClassification()->overrides()->byInferenceClassificationOverrideId('inferenceClassificationOverride-id')->delete()->wait();

```