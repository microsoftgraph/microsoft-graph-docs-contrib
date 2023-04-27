---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryHoldPolicy();
$requestBody->setDisplayname('My legalHold with sources');

$requestBody->setDescription('Created from Graph API');

$additionalData = [
		'userSources@odata.bind' => $userSources@odatabind1 = new ();
$		userSources@odatabind1->set@odatatype('microsoft.graph.security.userSource');

$		userSources@odatabind1->setEmail('SalesTeam@M365x809305.OnMicrosoft.com');


$userSources@odata.bindArray []= $userSources@odatabind1;
$requestBody->setUserSources@odatabind($userSources@odata.bindArray);


	'siteSources@odata.bind' => $siteSources@odatabind1 = new ();
$	siteSources@odatabind1->set@odatatype('microsoft.graph.security.siteSource');

$siteSources@odatabind1Site = new Site();
$	siteSources@odatabind1Site->setWebUrl('https://m365x809305.sharepoint.com/sites/Design-topsecret');


$siteSources@odatabind1->setSite($siteSources@odatabind1Site);

$siteSources@odata.bindArray []= $siteSources@odatabind1;
$requestBody->setSiteSources@odatabind($siteSources@odata.bindArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->legalHolds()->post($requestBody);


```