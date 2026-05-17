---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalOriginResourceConnector;
use Microsoft\Graph\Beta\Generated\Models\ConnectorType;
use Microsoft\Graph\Beta\Generated\Models\ExternalTokenBasedSapIagConnectionInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalOriginResourceConnector();
$requestBody->setOdataType('#microsoft.graph.externalOriginResourceConnector');
$requestBody->setDisplayName('SAP Access Control');
$requestBody->setDescription('SAP Access Control connector');
$requestBody->setConnectorType(new ConnectorType('sapAc'));
$connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
$connectionInfo->setOdataType('microsoft.graph.externalTokenBasedSapIagConnectionInfo');
$connectionInfo->setUrl('dev.test');
$connectionInfo->setAccessTokenUrl('9e90019f-6256-41fa-a225-5ef9cc1d9bf8');
$connectionInfo->setClientId('e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29');
$connectionInfo->setKeyVaultName('Keyvault');
$connectionInfo->setSecretName('Test');
$connectionInfo->setSubscriptionId('5ee98b73-d9df-43a7-8a92-36855054bdee');
$connectionInfo->setResourceGroup('SAPIAG Group');
$requestBody->setConnectionInfo($connectionInfo);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->externalOriginResourceConnectors()->post($requestBody)->wait();

```