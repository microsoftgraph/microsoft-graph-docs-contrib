---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRequest;
use Microsoft\Graph\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Generated\Models\AccessPackageResourceAttribute;
use Microsoft\Graph\Generated\Models\AccessPackageUserDirectoryAttributeStore;
use Microsoft\Graph\Generated\Models\AccessPackageResourceAttributeQuestion;
use Microsoft\Graph\Generated\Models\AccessPackageTextInputQuestion;
use Microsoft\Graph\Generated\Models\AccessPackageCatalog;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminUpdate'));
$resource = new AccessPackageResource();
$resource->setOriginId('e81d7f57-0840-45e1-894b-f505c1bdcc1f');
$resource->setOriginSystem('AadApplication');
$attributesAccessPackageResourceAttribute1 = new AccessPackageResourceAttribute();
$attributesAccessPackageResourceAttribute1Destination = new AccessPackageUserDirectoryAttributeStore();
$attributesAccessPackageResourceAttribute1Destination->setOdataType('microsoft.graph.accessPackageUserDirectoryAttributeStore');
$attributesAccessPackageResourceAttribute1->setDestination($attributesAccessPackageResourceAttribute1Destination);
$attributesAccessPackageResourceAttribute1->setName('officeLocation');
$attributesAccessPackageResourceAttribute1Source = new AccessPackageResourceAttributeQuestion();
$attributesAccessPackageResourceAttribute1Source->setOdataType('#microsoft.graph.accessPackageResourceAttributeQuestion');
$attributesAccessPackageResourceAttribute1SourceQuestion = new AccessPackageTextInputQuestion();
$attributesAccessPackageResourceAttribute1SourceQuestion->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');
$attributesAccessPackageResourceAttribute1SourceQuestion->setSequence(1);
$attributesAccessPackageResourceAttribute1SourceQuestion->setIsRequired(true);
$attributesAccessPackageResourceAttribute1SourceQuestion->setIsAnswerEditable(true);
$attributesAccessPackageResourceAttribute1SourceQuestion->setText('What office do you work at?');
$attributesAccessPackageResourceAttribute1SourceQuestion->setIsSingleLineQuestion(true);
$attributesAccessPackageResourceAttribute1SourceQuestion->setRegexPattern('[a-zA-Z]+[a-zA-Z\s]*');
$attributesAccessPackageResourceAttribute1Source->setQuestion($attributesAccessPackageResourceAttribute1SourceQuestion);
$attributesAccessPackageResourceAttribute1->setSource($attributesAccessPackageResourceAttribute1Source);
$attributesArray []= $attributesAccessPackageResourceAttribute1;
$attributesAccessPackageResourceAttribute2 = new AccessPackageResourceAttribute();
$attributesAccessPackageResourceAttribute2Destination = new AccessPackageUserDirectoryAttributeStore();
$attributesAccessPackageResourceAttribute2Destination->setOdataType('microsoft.graph.accessPackageUserDirectoryAttributeStore');
$attributesAccessPackageResourceAttribute2->setDestination($attributesAccessPackageResourceAttribute2Destination);
$attributesAccessPackageResourceAttribute2->setName('extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter');
$attributesAccessPackageResourceAttribute2Source = new AccessPackageResourceAttributeQuestion();
$attributesAccessPackageResourceAttribute2Source->setOdataType('#microsoft.graph.accessPackageResourceAttributeQuestion');
$attributesAccessPackageResourceAttribute2SourceQuestion = new AccessPackageTextInputQuestion();
$attributesAccessPackageResourceAttribute2SourceQuestion->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');
$attributesAccessPackageResourceAttribute2SourceQuestion->setIsRequired(false);
$attributesAccessPackageResourceAttribute2SourceQuestion->setText('What is your cost center number?');
$attributesAccessPackageResourceAttribute2SourceQuestion->setSequence(0);
$attributesAccessPackageResourceAttribute2SourceQuestion->setIsSingleLineQuestion(true);
$attributesAccessPackageResourceAttribute2SourceQuestion->setRegexPattern('[0-9]*');
$attributesAccessPackageResourceAttribute2Source->setQuestion($attributesAccessPackageResourceAttribute2SourceQuestion);
$attributesAccessPackageResourceAttribute2->setSource($attributesAccessPackageResourceAttribute2Source);
$attributesArray []= $attributesAccessPackageResourceAttribute2;
$resource->setAttributes($attributesArray);

$requestBody->setResource($resource);
$catalog = new AccessPackageCatalog();
$catalog->setId('beedadfe-01d5-4025-910b-84abb9369997');
$requestBody->setCatalog($catalog);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceRequests()->post($requestBody)->wait();

```