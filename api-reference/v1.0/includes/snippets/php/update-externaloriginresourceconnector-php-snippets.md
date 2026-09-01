---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalOriginResourceConnector;
use Microsoft\Graph\Generated\Models\ConnectorType;
use Microsoft\Graph\Generated\Models\ExternalTokenBasedSapIagConnectionInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalOriginResourceConnector();
$requestBody->setConnectorType(new ConnectorType('sapIag'));
$requestBody->setDisplayName('SAP IAG Connector 2.0');
$requestBody->setDescription('SAP IAG Connector 2.0 description');
$connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
$connectionInfo->setOdataType('microsoft.graph.externalTokenBasedSapIagConnectionInfo');
$connectionInfo->setUrl('https://contoso.example.com');
$connectionInfo->setKeyVaultName('Keyvault');
$connectionInfo->setSubscriptionId('5ee98b73-d9df-43a7-8a92-36855054bdee');
$connectionInfo->setResourceGroup('SAP IAG Group');
$connectionInfo->setAccessTokenUrl('https://contoso.example.com/oauth/token');
$connectionInfo->setClientId('e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29');
$connectionInfo->setSecretName('clientSecret');
$requestBody->setConnectionInfo($connectionInfo);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->externalOriginResourceConnectors()->byExternalOriginResourceConnectorId('externalOriginResourceConnector-id')->patch($requestBody)->wait();

```