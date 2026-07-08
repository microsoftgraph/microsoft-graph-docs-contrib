---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionRule;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionRuleStatus;
use Microsoft\Graph\Beta\Generated\Models\Security\QueryCondition;
use Microsoft\Graph\Beta\Generated\Models\Security\RuleSchedule;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionAction;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertTemplate;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;
use Microsoft\Graph\Beta\Generated\Models\Security\EntityMappingConfiguration;
use Microsoft\Graph\Beta\Generated\Models\Security\AccountEntityMapping;
use Microsoft\Graph\Beta\Generated\Models\Security\HostEntityMapping;
use Microsoft\Graph\Beta\Generated\Models\Security\FileEntityMapping;
use Microsoft\Graph\Beta\Generated\Models\Security\MitreTactic;
use Microsoft\Graph\Beta\Generated\Models\Security\MitreTechnique;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetectionRule();
$requestBody->setOdataType('#microsoft.graph.security.detectionRule');
$requestBody->setId('office-encoded-powershell');
$requestBody->setDisplayName('Suspicious encoded PowerShell from Office');
$requestBody->setDescription('Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.');
$requestBody->setStatus(new DetectionRuleStatus('enabled'));
$queryCondition = new QueryCondition();
$queryCondition->setQueryText('DeviceProcessEvents | where InitiatingProcessFileName in~ (\'winword.exe\',\'excel.exe\',\'outlook.exe\') | where FileName == \'powershell.exe\' | where ProcessCommandLine has \'-enc\'');
$requestBody->setQueryCondition($queryCondition);
$schedule = new RuleSchedule();
$schedule->setFrequency(new \DateInterval('PT1H'));
$requestBody->setSchedule($schedule);
$detectionAction = new DetectionAction();
$detectionActionAlertTemplate = new AlertTemplate();
$detectionActionAlertTemplate->setTitle('Suspicious encoded PowerShell from Office');
$detectionActionAlertTemplate->setDescription('An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.');
$detectionActionAlertTemplate->setSeverity(new AlertSeverity('high'));
$detectionActionAlertTemplate->setRecommendedActions('Investigate the parent Office document, isolate the device, and review the user\'s recent email activity.');
$detectionActionAlertTemplateEntityMappings = new EntityMappingConfiguration();
$accountsAccountEntityMapping1 = new AccountEntityMapping();
$accountsAccountEntityMapping1->setNameColumn('AccountName');
$accountsAccountEntityMapping1->setNtDomainColumn('AccountDomain');
$accountsAccountEntityMapping1->setSidColumn('AccountSid');
$accountsArray []= $accountsAccountEntityMapping1;
$detectionActionAlertTemplateEntityMappings->setAccounts($accountsArray);

$hostsHostEntityMapping1 = new HostEntityMapping();
$hostsHostEntityMapping1->setDeviceIdColumn('DeviceId');
$hostsHostEntityMapping1->setNameColumn('DeviceName');
$hostsArray []= $hostsHostEntityMapping1;
$detectionActionAlertTemplateEntityMappings->setHosts($hostsArray);

$filesFileEntityMapping1 = new FileEntityMapping();
$filesFileEntityMapping1->setNameColumn('FileName');
$filesFileEntityMapping1->setSha1Column('SHA1');
$filesFileEntityMapping1->setSha256Column('SHA256');
$filesArray []= $filesFileEntityMapping1;
$detectionActionAlertTemplateEntityMappings->setFiles($filesArray);

$detectionActionAlertTemplate->setEntityMappings($detectionActionAlertTemplateEntityMappings);
$tacticsMitreTactic1 = new MitreTactic();
$tacticsMitreTactic1->setTactic('Execution');
$techniquesMitreTechnique1 = new MitreTechnique();
$techniquesMitreTechnique1->setTechnique('T1059.001');
$techniquesArray []= $techniquesMitreTechnique1;
$tacticsMitreTactic1->setTechniques($techniquesArray);

$tacticsArray []= $tacticsMitreTactic1;
$detectionActionAlertTemplate->setTactics($tacticsArray);

$detectionAction->setAlertTemplate($detectionActionAlertTemplate);
$requestBody->setDetectionAction($detectionAction);

$result = $graphServiceClient->security()->rules()->detectionRules()->post($requestBody)->wait();

```