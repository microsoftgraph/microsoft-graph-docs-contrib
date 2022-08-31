---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SitePage();
$requestBody->setName('Events.aspx');

$requestBody->setTitle('Team Events');

$publishingState = new PublicationFacet();
$publishingState->setLevel('checkedOut');

$publishingState->setVersionId('0.1');


$requestBody->setPublishingState($publishingState);
$webPartsWebPart1 = new WebPart();
$webPartsWebPart1->setType('rte');

$webPartsWebPart1Data = new SitePageData();
$additionalData = [
'innerHTML' => '<p>Here are the team\'s upcoming events:</p>', 
];
$webPartsWebPart1Data->setAdditionalData($additionalData);



$webPartsWebPart1->setData($webPartsWebPart1Data);

$webPartsArray []= $webPartsWebPart1;
$webPartsWebPart2 = new WebPart();
$webPartsWebPart2->setType('d1d91016-032f-456d-98a4-721247c305e8');

$webPartsWebPart2Data = new SitePageData();
$additionalData = [
'title' => 'Events', 
'description' => 'Display upcoming events', 
'serverProcessedContent' => $webPartsWebPart2Data = new ServerProcessedContent();
$htmlStrings = new HtmlStrings();

$webPartsWebPart2Data->setHtmlStrings($htmlStrings);
$searchablePlainTexts = new SearchablePlainTexts();
$		searchablePlainTexts->setTitle('');


$webPartsWebPart2Data->setSearchablePlainTexts($searchablePlainTexts);
$imageSources = new ImageSources();

$webPartsWebPart2Data->setImageSources($imageSources);
$links = new Links();
$		links->setBaseUrl('https://www.contoso.com/sites/Engineering');


$webPartsWebPart2Data->setLinks($links);
$componentDependencies = new ComponentDependencies();
$		componentDependencies->setLayoutComponentId('8ac0c53c-e8d0-4e3e-87d0-7449eb0d4027');


$webPartsWebPart2Data->setComponentDependencies($componentDependencies);

$webPartsWebPart2Data->setServerProcessedContent($serverProcessedContent);

'dataVersion' => '1.0', 
'properties' => $webPartsWebPart2Data = new Properties();
$		webPartsWebPart2Data->setSelectedListId('032e08ab-89b0-4d8f-bc10-73094233615c');

$		webPartsWebPart2Data->setSelectedCategory('');

		$webPartsWebPart2Data->setDateRangeOption(0);

$		webPartsWebPart2Data->setStartDate('');

$		webPartsWebPart2Data->setEndDate('');

		$webPartsWebPart2Data->setIsOnSeeAllPage(false);

$		webPartsWebPart2Data->setLayoutId('FilmStrip');

$		webPartsWebPart2Data->setDataProviderId('Event');

$		webPartsWebPart2Data->setWebId('0764c419-1ecc-4126-ba32-0c25ae0fffe8');

$		webPartsWebPart2Data->setSiteId('6b4ffc7a-cfc2-4a76-903a-1cc3686dee23');


$webPartsWebPart2Data->setProperties($properties);

];
$webPartsWebPart2Data->setAdditionalData($additionalData);



$webPartsWebPart2->setData($webPartsWebPart2Data);

$webPartsArray []= $webPartsWebPart2;
$requestBody->setWebParts($webPartsArray);




$requestResult = $graphServiceClient->sitesById('site-id')->pages()->post($requestBody);


```