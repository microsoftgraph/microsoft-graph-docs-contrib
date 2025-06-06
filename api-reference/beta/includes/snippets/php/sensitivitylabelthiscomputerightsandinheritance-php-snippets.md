---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\DataSecurityAndGovernance\SensitivityLabels\ComputeRightsAndInheritance\ComputeRightsAndInheritancePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ProtectedContent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ComputeRightsAndInheritancePostRequestBody();
$requestBody->setDelegatedUserEmail('String');
$requestBody->setLocale('String');
$protectedContentsProtectedContent1 = new ProtectedContent();
$protectedContentsProtectedContent1->setOdataType('microsoft.graph.protectedContent');
$protectedContentsArray []= $protectedContentsProtectedContent1;
$requestBody->setProtectedContents($protectedContentsArray);

$requestBody->setSupportedContentFormats(['String', ]);

$result = $graphServiceClient->security()->dataSecurityAndGovernance()->sensitivityLabels()->computeRightsAndInheritance()->post($requestBody)->wait();

```