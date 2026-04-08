---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ConfigurationMonitor;
use Microsoft\Graph\Beta\Generated\Models\ConfigurationBaseline;
use Microsoft\Graph\Beta\Generated\Models\BaselineParameter;
use Microsoft\Graph\Beta\Generated\Models\BaselineParameterType;
use Microsoft\Graph\Beta\Generated\Models\BaselineResource;
use Microsoft\Graph\Beta\Generated\Models\OpenComplexDictionaryType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfigurationMonitor();
$requestBody->setDisplayName('Demo Monitor');
$requestBody->setDescription('This is a Demo Monitor');
$baseline = new ConfigurationBaseline();
$baseline->setDisplayName('Demo Baseline');
$baseline->setDescription('This is a baseline with SharedMailbox, AcceptedDomain and MailContact');
$parametersBaselineParameter1 = new BaselineParameter();
$parametersBaselineParameter1->setDisplayName('FQDN');
$parametersBaselineParameter1->setDescription('The Fully Qualified Domain Name of the Tenant');
$parametersBaselineParameter1->setParameterType(new BaselineParameterType('string'));
$parametersArray []= $parametersBaselineParameter1;
$baseline->setParameters($parametersArray);

$resourcesBaselineResource1 = new BaselineResource();
$resourcesBaselineResource1->setDisplayName('TestSharedMailbox Resource');
$resourcesBaselineResource1->setResourceType('microsoft.exchange.sharedmailbox');
$resourcesBaselineResource1Properties = new OpenComplexDictionaryType();
$additionalData = [
'DisplayName' => 'TestSharedMailbox',
'Identity' => 'TestSharedMailbox',
'Ensure' => 'Present',
'PrimarySmtpAddress' => '[concat(\'testSharedMailbox\', parameters(\'FQDN\'))]',
'EmailAddresses' => [
'abc@contoso.onmicrosoft.com', '[concat(\'testSharedMailbox@\', parameters(\'FQDN\'))]', ],
];
$resourcesBaselineResource1Properties->setAdditionalData($additionalData);
$resourcesBaselineResource1->setProperties($resourcesBaselineResource1Properties);
$resourcesArray []= $resourcesBaselineResource1;
$resourcesBaselineResource2 = new BaselineResource();
$resourcesBaselineResource2->setDisplayName('Accepted Domain');
$resourcesBaselineResource2->setResourceType('microsoft.exchange.accepteddomain');
$resourcesBaselineResource2Properties = new OpenComplexDictionaryType();
$additionalData = [
'Identity' => 'contoso.onmicrosoft.com',
'DomainType' => 'InternalRelay',
'Ensure' => 'Present',
];
$resourcesBaselineResource2Properties->setAdditionalData($additionalData);
$resourcesBaselineResource2->setProperties($resourcesBaselineResource2Properties);
$resourcesArray []= $resourcesBaselineResource2;
$resourcesBaselineResource3 = new BaselineResource();
$resourcesBaselineResource3->setDisplayName('Mail Contact Resource');
$resourcesBaselineResource3->setResourceType('microsoft.exchange.mailcontact');
$resourcesBaselineResource3Properties = new OpenComplexDictionaryType();
$additionalData = [
'Name' => 'Chris',
'DisplayName' => 'Chris',
'ExternalEmailAddress' => 'SMTP:chris@fabrikam.com',
'Alias' => 'Chrisa',
'Ensure' => 'Present',
];
$resourcesBaselineResource3Properties->setAdditionalData($additionalData);
$resourcesBaselineResource3->setProperties($resourcesBaselineResource3Properties);
$resourcesArray []= $resourcesBaselineResource3;
$baseline->setResources($resourcesArray);

$requestBody->setBaseline($baseline);
$parameters = new OpenComplexDictionaryType();
$additionalData = [
'FQDN' => 'contoso.onmicrosoft.com',
];
$parameters->setAdditionalData($additionalData);
$requestBody->setParameters($parameters);

$result = $graphServiceClient->admin()->configurationManagement()->configurationMonitors()->byConfigurationMonitorId('configurationMonitor-id')->patch($requestBody)->wait();

```