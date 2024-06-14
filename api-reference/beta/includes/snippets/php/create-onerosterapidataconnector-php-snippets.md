---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\OneRosterApiDataConnector;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\ApiFormat;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\OAuth2ClientCredential;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneRosterApiDataConnector();
$requestBody->setOdataType('#microsoft.graph.industryData.oneRosterApiDataConnector');
$requestBody->setDisplayName('Generic OAuth2 Connector');
$requestBody->setApiFormat(new ApiFormat('oneRoster'));
$requestBody->setBaseUrl('https://fakeProvider.net/ims/oneroster/v1p1');
$requestBody->setApiVersion('1.1');
$credential = new OAuth2ClientCredential();
$credential->setOdataType('#microsoft.graph.industryData.oAuth2ClientCredential');
$credential->setDisplayName('One Roster API Credentials');
$credential->setClientId('530be723-6af3-4952-8658-668fb2598ad7');
$credential->setClientSecret('thisIsASecret');
$credential->setTokenUrl('https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token');
$credential->setScope(null);
$requestBody->setCredential($credential);
$requestBody->setIsDemographicsEnabled(false);
$requestBody->setIsFlagsEnabled(false);
$requestBody->setIsContactsEnabled(false);
$additionalData = [
	'sourceSystem@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/sourceSystems(\'c93a6e02-aeb7-437f-cc52-08dc3fc158af\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->external()->industryData()->dataConnectors()->post($requestBody)->wait();

```