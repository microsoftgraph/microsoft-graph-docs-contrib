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
$requestBody->setOdataType('#microsoft.graph.externalOriginResourceConnector');
$requestBody->setDisplayName('SAP IAG Connector');
$requestBody->setDescription('This connector helps integrate Microsoft Entra with SAP IAG');
$requestBody->setConnectorType(new ConnectorType('sapIag'));
$connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
$connectionInfo->setOdataType('microsoft.graph.externalTokenBasedSapIagConnectionInfo');
$connectionInfo->setUrl('https://contoso.example.com');
$connectionInfo->setAccessTokenUrl('https://contoso.example.com/oauth/token');
$connectionInfo->setClientId('e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29');
$connectionInfo->setKeyVaultName('Keyvault');
$connectionInfo->setSecretName('clientSecret');
$connectionInfo->setSubscriptionId('5ee98b73-d9df-43a7-8a92-36855054bdee');
$connectionInfo->setResourceGroup('SAP IAG Group');
$requestBody->setConnectionInfo($connectionInfo);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->externalOriginResourceConnectors()->post($requestBody)->wait();

```