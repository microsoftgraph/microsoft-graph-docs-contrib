---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\InferenceClassificationOverride;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InferenceClassificationOverride();
$requestBody->setClassifyAs(new InferenceClassificationType('focused'));

$result = $graphServiceClient->me()->inferenceClassification()->overrides()->byInferenceClassificationOverrideId('inferenceClassificationOverride-id')->patch($requestBody)->wait();

```