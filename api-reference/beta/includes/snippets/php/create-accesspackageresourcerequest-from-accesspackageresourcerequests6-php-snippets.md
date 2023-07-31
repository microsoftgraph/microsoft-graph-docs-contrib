---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('26ac0c0a-08bc-4a7b-a313-839f58044ba5');

$requestBody->setRequestType('AdminAdd');

$requestBody->setJustification('');

$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setDisplayName('Faculty cafeteria ordering');

$accessPackageResource->setDescription('Example application');

$accessPackageResource->setUrl('https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/');

$accessPackageResource->setResourceType('Application');

$accessPackageResource->setOriginId('2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e');

$accessPackageResource->setOriginSystem('AadApplication');

$attributesAccessPackageResourceAttribute1 = new AccessPackageResourceAttribute();
$attributesAccessPackageResourceAttribute1->setAttributeName('extension_2b676109c7c74ae2b41549205f1947ed_personalTitle');

$attributesAccessPackageResourceAttribute1->setIsEditable(true);

$attributesAccessPackageResourceAttribute1->setIsPersistedOnAssignmentRemoval(true);

$attributesAccessPackageResourceAttribute1AttributeSource = new AccessPackageResourceAttributeQuestion();
$attributesAccessPackageResourceAttribute1AttributeSource->setOdataType('#microsoft.graph.accessPackageResourceAttributeQuestion');

$attributesAccessPackageResourceAttribute1AttributeSourceQuestion = new AccessPackageTextInputQuestion();
$attributesAccessPackageResourceAttribute1AttributeSourceQuestion->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');

$attributesAccessPackageResourceAttribute1AttributeSourceQuestion->setIsRequired(false);

$attributesAccessPackageResourceAttribute1AttributeSourceQuestion->setSequence(0);

$attributesAccessPackageResourceAttribute1AttributeSourceQuestion->setIsSingleLineQuestion(true);

$attributesAccessPackageResourceAttribute1AttributeSourceQuestionText = new AccessPackageLocalizedContent();
$attributesAccessPackageResourceAttribute1AttributeSourceQuestionText->setDefaultText('Title');

$attributesAccessPackageResourceAttribute1AttributeSourceQuestionText->setLocalizedTexts([	]);


$attributesAccessPackageResourceAttribute1AttributeSourceQuestion->setText($attributesAccessPackageResourceAttribute1AttributeSourceQuestionText);

$attributesAccessPackageResourceAttribute1AttributeSource->setQuestion($attributesAccessPackageResourceAttribute1AttributeSourceQuestion);

$attributesAccessPackageResourceAttribute1->setAttributeSource($attributesAccessPackageResourceAttribute1AttributeSource);
$attributesAccessPackageResourceAttribute1AttributeDestination = new AccessPackageUserDirectoryAttributeStore();
$attributesAccessPackageResourceAttribute1AttributeDestination->setOdataType('#microsoft.graph.accessPackageUserDirectoryAttributeStore');


$attributesAccessPackageResourceAttribute1->setAttributeDestination($attributesAccessPackageResourceAttribute1AttributeDestination);

$attributesArray []= $attributesAccessPackageResourceAttribute1;
$accessPackageResource->setAttributes($attributesArray);



$requestBody->setAccessPackageResource($accessPackageResource);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody);


```