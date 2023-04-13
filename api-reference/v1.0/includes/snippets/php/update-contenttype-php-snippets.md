---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ContentType();
$requestBody->setName('updatedCt');

$documentSet = new DocumentSet();
$documentSet->setShouldPrefixNameToFile(true);

$allowedContentTypesContentTypeInfo1 = new ContentTypeInfo();
$allowedContentTypesContentTypeInfo1->setId('0x0101');

$allowedContentTypesContentTypeInfo1->setName('Document');


$allowedContentTypesArray []= $allowedContentTypesContentTypeInfo1;
$documentSet->setAllowedContentTypes($allowedContentTypesArray);


$defaultContentsDocumentSetContent1 = new DocumentSetContent();
$defaultContentsDocumentSetContent1->setFileName('a.txt');

$defaultContentsDocumentSetContent1ContentType = new ContentTypeInfo();
$defaultContentsDocumentSetContent1ContentType->setId('0x0101');


$defaultContentsDocumentSetContent1->setContentType($defaultContentsDocumentSetContent1ContentType);

$defaultContentsArray []= $defaultContentsDocumentSetContent1;
$defaultContentsDocumentSetContent2 = new DocumentSetContent();
$defaultContentsDocumentSetContent2->setFileName('b.txt');

$defaultContentsDocumentSetContent2ContentType = new ContentTypeInfo();
$defaultContentsDocumentSetContent2ContentType->setId('0x0101');


$defaultContentsDocumentSetContent2->setContentType($defaultContentsDocumentSetContent2ContentType);

$defaultContentsArray []= $defaultContentsDocumentSetContent2;
$documentSet->setDefaultContents($defaultContentsArray);


$sharedColumnsColumnDefinition1 = new ColumnDefinition();
$sharedColumnsColumnDefinition1->setName('Description');

$sharedColumnsColumnDefinition1->setId('cbb92da4-fd46-4c7d-af6c-3128c2a5576e');


$sharedColumnsArray []= $sharedColumnsColumnDefinition1;
$sharedColumnsColumnDefinition2 = new ColumnDefinition();
$sharedColumnsColumnDefinition2->setName('Address');

$sharedColumnsColumnDefinition2->setId('fc2e188e-ba91-48c9-9dd3-16431afddd50');


$sharedColumnsArray []= $sharedColumnsColumnDefinition2;
$documentSet->setSharedColumns($sharedColumnsArray);


$welcomePageColumnsColumnDefinition1 = new ColumnDefinition();
$welcomePageColumnsColumnDefinition1->setName('Address');

$welcomePageColumnsColumnDefinition1->setId('fc2e188e-ba91-48c9-9dd3-16431afddd50');


$welcomePageColumnsArray []= $welcomePageColumnsColumnDefinition1;
$documentSet->setWelcomePageColumns($welcomePageColumnsArray);



$requestBody->setDocumentSet($documentSet);


$result = $graphServiceClient->sitesById('site-id')->contentTypesById('contentType-id')->patch($requestBody);


```