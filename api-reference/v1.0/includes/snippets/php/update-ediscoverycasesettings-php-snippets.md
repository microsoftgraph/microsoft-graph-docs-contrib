---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EdiscoveryCaseSettings;
use Microsoft\Graph\Generated\Models\RedundancyDetectionSettings;
use Microsoft\Graph\Generated\Models\TopicModelingSettings;
use Microsoft\Graph\Generated\Models\OcrSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCaseSettings();
$requestBody->setOdataType('#microsoft.graph.security.ediscoveryCaseSettings');
$redundancyDetection = new RedundancyDetectionSettings();
$redundancyDetection->setOdataType('microsoft.graph.security.redundancyDetectionSettings');
$requestBody->setRedundancyDetection($redundancyDetection);
$topicModeling = new TopicModelingSettings();
$topicModeling->setOdataType('microsoft.graph.security.topicModelingSettings');
$requestBody->setTopicModeling($topicModeling);
$ocr = new OcrSettings();
$ocr->setOdataType('microsoft.graph.security.ocrSettings');
$requestBody->setOcr($ocr);

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->settings()->patch($requestBody)->wait();

```