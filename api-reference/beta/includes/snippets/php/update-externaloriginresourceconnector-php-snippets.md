---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalOriginResourceConnector;
use Microsoft\Graph\Beta\Generated\Models\ConnectorType;
use Microsoft\Graph\Beta\Generated\Models\ConnectionInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalOriginResourceConnector();
$requestBody->setId('d743fe46-80f8-41b1-a2ee-7796e024edb9');
$requestBody->setConnectorType(new ConnectorType('sapIag'));
$requestBody->setDisplayName('SAP IAG 5.0');
$requestBody->setDescription('SAP IAG 5.0.0.0.0');
$connectionInfo = new ConnectionInfo();
$connectionInfo->setOdataType('Microsoft.IGAELM.EC.FrontEnd.ExternalModel.externalTokenBasedSapIagConnectionInfo');
$connectionInfo->setUrl('https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com');
$additionalData = [
	'keyVaultName' => 'sap-key-vault',
	'subscriptionId' => 'caa5v042-9c76-44de-9e84-f3e3071a7b4e',
	'resourceGroup' => 'test-rg',
	'accessTokenUrl' => 'https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token',
	'clientId' => 'sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378',
	'secretName' => 'clienecret',
];
$connectionInfo->setAdditionalData($additionalData);
$requestBody->setConnectionInfo($connectionInfo);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->externalOriginResourceConnectors()->byExternalOriginResourceConnectorId('externalOriginResourceConnector-id')->patch($requestBody)->wait();

```