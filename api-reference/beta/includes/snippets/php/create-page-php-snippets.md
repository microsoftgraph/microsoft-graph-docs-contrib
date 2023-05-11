---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SitePage();
$requestBody->setName('test.aspx');

$requestBody->setTitle('test');

$requestBody->setPageLayout(new PageLayoutType('article'));

$requestBody->setShowComments(true);

$requestBody->setShowRecommendedPages(false);

$titleArea = new TitleArea();
$titleArea->setEnableGradientEffect(true);

$titleArea->setImageWebUrl('/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG');

$titleArea->setLayout(new TitleAreaLayoutType('colorblock'));

$titleArea->setShowAuthor(true);

$titleArea->setShowPublishedDate(false);

$titleArea->setShowTextBlockAboveTitle(false);

$titleArea->setTextAboveTitle('TEXT ABOVE TITLE');

$titleArea->setTextAlignment(new TitleAreaTextAlignmentType('left'));

$additionalData = [
		'imageSourceType' => 2,
		'title' => 'sample1', 
];
$titleArea->setAdditionalData($additionalData);



$requestBody->setTitleArea($titleArea);
$canvasLayout = new CanvasLayout();
$horizontalSectionsHorizontalSection1 = new HorizontalSection();
$horizontalSectionsHorizontalSection1->setLayout(new HorizontalSectionLayoutType('onethirdrightcolumn'));

$horizontalSectionsHorizontalSection1->setId('1');

$horizontalSectionsHorizontalSection1->setEmphasis(new SectionEmphasisType('none'));

$columnsHorizontalSectionColumn1 = new HorizontalSectionColumn();
$columnsHorizontalSectionColumn1->setId('1');

$columnsHorizontalSectionColumn1->setWidth(8);

$webpartsWebPart1 = new WebPart();
$webpartsWebPart1->setId('6f9230af-2a98-4952-b205-9ede4f9ef548');

$additionalData = [
		'innerHtml' => '<p><b>Hello!</b></p>', 
];
$webpartsWebPart1->setAdditionalData($additionalData);



$webpartsArray []= $webpartsWebPart1;
$columnsHorizontalSectionColumn1->setWebparts($webpartsArray);



$columnsArray []= $columnsHorizontalSectionColumn1;
$columnsHorizontalSectionColumn2 = new HorizontalSectionColumn();
$columnsHorizontalSectionColumn2->setId('2');

$columnsHorizontalSectionColumn2->setWidth(4);

$webpartsWebPart1 = new WebPart();
$webpartsWebPart1->setId('73d07dde-3474-4545-badb-f28ba239e0e1');

$additionalData = [
	'webPartType' => 'd1d91016-032f-456d-98a4-721247c305e8', 
	'data' => $webpartsWebPart1 = new Data();
$	webpartsWebPart1->setDataVersion('1.9');

$	webpartsWebPart1->setDescription('Show an image on your page');

$	webpartsWebPart1->setTitle('Image');

$properties = new Properties();
	$properties->setImageSourceType(2);

$	properties->setAltText('');

$	properties->setOverlayText('');

$	properties->setSiteid('0264cabe-6b92-450a-b162-b0c3d54fe5e8');

$	properties->setWebid('f3989670-cd37-4514-8ccb-0f7c2cbe5314');

$	properties->setListid('bdb41041-eb06-474e-ac29-87093386bb14');

$	properties->setUniqueid('d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb');

	$properties->setImgWidth(4288);

	$properties->setImgHeight(2848);

	$properties->setFixAspectRatio(false);

$	properties->setCaptionText('');

$	properties->setAlignment('Center');


$webpartsWebPart1->setProperties($properties);
$serverProcessedContent = new ServerProcessedContent();
$imageSources1 = new ();
$	imageSources1->setKey('imageSource');

$	imageSources1->setValue('/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG');


$imageSourcesArray []= $imageSources1;
$serverProcessedContent->setImageSources($imageSourcesArray);


$customMetadata1 = new ();
$customMetadata1->setKey('imageSource');

$customMetadata1Value = new Value();
$customMetadata1Value->setSiteid('0264cabe-6b92-450a-b162-b0c3d54fe5e8');

$customMetadata1Value->setWebid('f3989670-cd37-4514-8ccb-0f7c2cbe5314');

$customMetadata1Value->setListid('bdb41041-eb06-474e-ac29-87093386bb14');

$customMetadata1Value->setUniqueid('d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb');

$customMetadata1Value->setWidth('4288');

$customMetadata1Value->setHeight('2848');


$customMetadata1->setValue($customMetadata1Value);

$customMetadataArray []= $customMetadata1;
$serverProcessedContent->setCustomMetadata($customMetadataArray);



$webpartsWebPart1->setServerProcessedContent($serverProcessedContent);

$webpartsWebPart1->setData($data);

];
$webpartsWebPart1->setAdditionalData($additionalData);



$webpartsArray []= $webpartsWebPart1;
$columnsHorizontalSectionColumn2->setWebparts($webpartsArray);



$columnsArray []= $columnsHorizontalSectionColumn2;
$horizontalSectionsHorizontalSection1->setColumns($columnsArray);



$horizontalSectionsArray []= $horizontalSectionsHorizontalSection1;
$canvasLayout->setHorizontalSections($horizontalSectionsArray);



$requestBody->setCanvasLayout($canvasLayout);


$result = $graphServiceClient->sitesById('site-id')->pages()->post($requestBody);


```