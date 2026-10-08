---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRequest;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceScope;
use Microsoft\Graph\Beta\Generated\Models\ExternalOriginResourceConnector;
use Microsoft\Graph\Beta\Generated\Models\ConnectorType;
use Microsoft\Graph\Beta\Generated\Models\ExternalTokenBasedSapIagConnectionInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('bcb19bf7-cdf7-4a70-a106-f6543620b2a5');
$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setId('88eb460d-ca08-4eb9-afae-8d60a8b00377');
$accessPackageResource->setDisplayName('SAP IAG Access Rights');
$accessPackageResource->setDescription('This resource represents the business roles of SAP IAG');
$accessPackageResource->setResourceType('Business role');
$accessPackageResource->setOriginId('https://iagintgorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com');
$accessPackageResource->setOriginSystem('External');
$accessPackageResource->setAccessPackageResourceScopes([	]);
$accessPackageResourceExternalOriginResourceConnector = new ExternalOriginResourceConnector();
$accessPackageResourceExternalOriginResourceConnector->setId('1a53cea5-48bd-467c-af81-a24245b0df2b');
$accessPackageResourceExternalOriginResourceConnector->setDisplayName('SAP IAG 10.0');
$accessPackageResourceExternalOriginResourceConnector->setDescription('SAP IAG 10.0.0');
$accessPackageResourceExternalOriginResourceConnector->setConnectorType(new ConnectorType('sapIag'));
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setOdataType('microsoft.graph.externalTokenBasedSapIagConnectionInfo');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setUrl('https://iagigorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setSubscriptionId('8e072eb5-73f5-4ed2-9324-a734dcb9728');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setResourceGroup('SAPResourceGroup');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setAccessTokenUrl('https://entra-docu-intg-mrrd3gv.authentication.sap.hana.ondemand.com/oauth/token');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setClientId('sb-72062308-a7ae-456f-b9a4-24302b8a4aa!b247012|iagapi-iag-intg-space!b11378');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setKeyVaultName('SAPIAG-KV');
$accessPackageResourceExternalOriginResourceConnectorConnectionInfo->setSecretName('ClientSecret');
$accessPackageResourceExternalOriginResourceConnector->setConnectionInfo($accessPackageResourceExternalOriginResourceConnectorConnectionInfo);
$accessPackageResource->setExternalOriginResourceConnector($accessPackageResourceExternalOriginResourceConnector);
$accessPackageResource->setAccessPackageResourceEnvironment(null);
$requestBody->setAccessPackageResource($accessPackageResource);
$requestBody->setRequestType('AdminAdd');
$requestBody->setExecuteImmediately(true);
$additionalData = [
	'history' => [],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody)->wait();

```