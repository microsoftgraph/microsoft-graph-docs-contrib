---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionRule;
use Microsoft\Graph\Beta\Generated\Models\Security\QueryCondition;
use Microsoft\Graph\Beta\Generated\Models\Security\RuleSchedule;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionAction;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertTemplate;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetectionRule();
$requestBody->setOdataType('#microsoft.graph.security.detectionRule');
$requestBody->setId('office-encoded-powershell');
$requestBody->setDisplayName('Suspicious encoded PowerShell from Office');
$queryCondition = new QueryCondition();
$queryCondition->setQueryText('DeviceProcessEvents | where InitiatingProcessFileName in~ (\'winword.exe\',\'excel.exe\',\'outlook.exe\') | where FileName == \'powershell.exe\' | where ProcessCommandLine has \'-enc\'');
$requestBody->setQueryCondition($queryCondition);
$schedule = new RuleSchedule();
$additionalData = [
	'frequency' => 'PT1H',
];
$schedule->setAdditionalData($additionalData);
$requestBody->setSchedule($schedule);
$detectionAction = new DetectionAction();
$detectionActionAlertTemplate = new AlertTemplate();
$detectionActionAlertTemplate->setTitle('Suspicious encoded PowerShell from Office');
$detectionActionAlertTemplate->setDescription('An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.');
$detectionActionAlertTemplate->setSeverity(new AlertSeverity('high'));
$detectionActionAlertTemplate->setRecommendedActions('Investigate the parent Office document, isolate the device, and review the user\'s recent email activity.');
$additionalData = [
	'entityMappings' => [
		'accounts' => [
				[
					'nameColumn' => 'AccountName',
					'ntDomainColumn' => 'AccountDomain',
					'sidColumn' => 'AccountSid',
				],
			],
		'hosts' => [
				[
					'deviceIdColumn' => 'DeviceId',
					'nameColumn' => 'DeviceName',
				],
			],
		'files' => [
				[
					'nameColumn' => 'FileName',
					'sha1Column' => 'SHA1',
					'sha256Column' => 'SHA256',
				],
			],
	],
	'tactics' => [
			[
				'tactic' => 'Execution',
				'techniques' => [
						[
							'technique' => 'T1059.001',
						],
					],
			],
		],
];
$detectionActionAlertTemplate->setAdditionalData($additionalData);
$detectionAction->setAlertTemplate($detectionActionAlertTemplate);
$requestBody->setDetectionAction($detectionAction);
$additionalData = [
	'description' => 'Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.',
	'status' => 'enabled',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->rules()->detectionRules()->post($requestBody)->wait();

```