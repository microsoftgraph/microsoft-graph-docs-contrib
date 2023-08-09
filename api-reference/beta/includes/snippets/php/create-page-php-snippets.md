---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SitePage();
$requestBody->setOdataType('#microsoft.graph.sitePage');

$requestBody->setName('test.aspx');

$requestBody->setTitle('test');

$requestBody->setPageLayout(new PageLayoutType('article'));

$requestBody->setShowComments(true);

$requestBody->setShowRecommendedPages(false);

$titleArea = new TitleArea();
$titleArea->setEnableGradientEffect(true);

$titleArea->setImageWebUrl('/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG');

$titleArea->setLayout(new TitleAreaLayoutType('colorBlock'));

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
$horizontalSectionsHorizontalSection1->setLayout(new HorizontalSectionLayoutType('oneThirdRightColumn'));

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
	'data' => 	[
			'dataVersion' => '1.9', 
			'description' => 'Show an image on your page', 
			'title' => 'Image', 
			'properties' => 			[
					'imageSourceType' => 2,
					'altText' => '', 
					'overlayText' => '', 
					'siteid' => '0264cabe-6b92-450a-b162-b0c3d54fe5e8', 
					'webid' => 'f3989670-cd37-4514-8ccb-0f7c2cbe5314', 
					'listid' => 'bdb41041-eb06-474e-ac29-87093386bb14', 
					'uniqueid' => 'd9f94b40-78ba-48d0-a39f-3cb23c2fe7eb', 
					'imgWidth' => 4288,
					'imgHeight' => 2848,
					'fixAspectRatio' => false,
					'captionText' => '', 
					'alignment' => 'Center', 
			],

			'serverProcessedContent' => 			[
					'imageSources' => [
							[
									'key' => 'imageSource', 
									'value' => '/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG', 
							],
						],
					'customMetadata' => [
							[
									'key' => 'imageSource', 
									'value' => 									[
											'siteid' => '0264cabe-6b92-450a-b162-b0c3d54fe5e8', 
											'webid' => 'f3989670-cd37-4514-8ccb-0f7c2cbe5314', 
											'listid' => 'bdb41041-eb06-474e-ac29-87093386bb14', 
											'uniqueid' => 'd9f94b40-78ba-48d0-a39f-3cb23c2fe7eb', 
											'width' => '4288', 
											'height' => '2848', 
									],

							],
						],
			],

	],

];
$webpartsWebPart1->setAdditionalData($additionalData);



$webpartsArray []= $webpartsWebPart1;
$columnsHorizontalSectionColumn2->setWebparts($webpartsArray);



$columnsArray []= $columnsHorizontalSectionColumn2;
$horizontalSectionsHorizontalSection1->setColumns($columnsArray);



$horizontalSectionsArray []= $horizontalSectionsHorizontalSection1;
$canvasLayout->setHorizontalSections($horizontalSectionsArray);



$requestBody->setCanvasLayout($canvasLayout);


$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->post($requestBody);


```