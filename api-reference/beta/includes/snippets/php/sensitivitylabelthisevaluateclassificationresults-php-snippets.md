---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Security\InformationProtection\SensitivityLabels\Microsoft\Graph\Security\EvaluateClassificationResults\EvaluateClassificationResultsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\EvaluateClassificationResultsPostRequestBody;
use Microsoft\Graph\Generated\Models\ContentInfo;
use Microsoft\Graph\Generated\Models\KeyValuePair;
use Microsoft\Graph\Generated\Models\ClassificationResult;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EvaluateClassificationResultsPostRequestBody();
$contentInfo = new ContentInfo();
$contentInfo->setOdataType('#microsoft.graph.security.contentInfo');
$contentInfo->setContentFormat('File');
$contentInfo->setIdentifier('c:\user\new.docx');
$contentInfo->setState(new ContentState('rest'));
$contentInfo->setMetadata([	]);
$additionalData = [
	'format@odata.type' => '#microsoft.graph.security.contentFormat',
	'format' => 'default',
	'state@odata.type' => '#microsoft.graph.security.contentState',
];
$contentInfo->setAdditionalData($additionalData);
$requestBody->setContentInfo($contentInfo);
$classificationResultsClassificationResult1 = new ClassificationResult();
$classificationResultsClassificationResult1->setSensitiveTypeId('50842eb7-edc8-4019-85dd-5a5c1f2bb085');
$classificationResultsClassificationResult1->setCount(7);
$classificationResultsClassificationResult1->setConfidenceLevel(99);
$classificationResultsArray []= $classificationResultsClassificationResult1;
$requestBody->setClassificationResults($classificationResultsArray);

$requestConfiguration = new MicrosoftEvaluateClassificationResultsRequestBuilderPostRequestConfiguration();
$headers = [
	'User-Agent' => 'ContosoLOBApp/1.0',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->security()->informationProtection()->sensitivityLabels()->microsoftGraphSecurityEvaluateClassificationResults()->post($requestBody, $requestConfiguration)->wait();

```