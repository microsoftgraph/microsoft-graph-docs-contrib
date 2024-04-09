---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RemediatePostRequestBody;
use Microsoft\Graph\Generated\Models\AnalyzedEmail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemediatePostRequestBody();
$requestBody->setDisplayName('Clean up Phish email');
$requestBody->setDescription('Delete email');
$requestBody->setSeverity(new RemediationSeverity('medium'));
$requestBody->setAction(new RemediationAction('softDelete'));
$requestBody->setRemediateSendersCopy(false);
$analyzedEmailsAnalyzedEmail1 = new AnalyzedEmail();
$analyzedEmailsAnalyzedEmail1->setId('73ca4154-58d8-43d0-a890-08dc18c52e6d-1311265001240363512-1');
$analyzedEmailsArray []= $analyzedEmailsAnalyzedEmail1;
$analyzedEmailsAnalyzedEmail2 = new AnalyzedEmail();
$analyzedEmailsAnalyzedEmail2->setId('73ca4154-58d8-43d0-a890-08dc18c52e6d-13805748846361900678-1');
$analyzedEmailsArray []= $analyzedEmailsAnalyzedEmail2;
$requestBody->setAnalyzedEmails($analyzedEmailsArray);


$graphServiceClient->security()->collaboration()->analyzedEmails()->microsoftGraphSecurityRemediate()->post($requestBody)->wait();

```