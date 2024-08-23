---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Collaboration\AnalyzedEmails\MicrosoftGraphSecurityRemediate\RemediatePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\RemediationSeverity;
use Microsoft\Graph\Beta\Generated\Models\Security\RemediationAction;
use Microsoft\Graph\Beta\Generated\Models\Security\AnalyzedEmail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemediatePostRequestBody();
$requestBody->setDisplayName('Clean up Phish email');
$requestBody->setDescription('Delete email');
$requestBody->setSeverity(new RemediationSeverity('medium'));
$requestBody->setAction(new RemediationAction('softDelete'));
$requestBody->setRemediateSendersCopy(false);
$analyzedEmailsAnalyzedEmail1 = new AnalyzedEmail();
$analyzedEmailsAnalyzedEmail1->setNetworkMessageId('73ca4154-58d8-43d0-a890-08dc18c52e6d');
$analyzedEmailsAnalyzedEmail1->setRecipientEmailAddress('hannah.jarvis@contoso.com');
$analyzedEmailsArray []= $analyzedEmailsAnalyzedEmail1;
$analyzedEmailsAnalyzedEmail2 = new AnalyzedEmail();
$analyzedEmailsAnalyzedEmail2->setNetworkMessageId('73ca4154-58d8-43d0-a890-08dc18c52e6d');
$analyzedEmailsAnalyzedEmail2->setRecipientEmailAddress('preston.morales@contoso.com');
$analyzedEmailsArray []= $analyzedEmailsAnalyzedEmail2;
$requestBody->setAnalyzedEmails($analyzedEmailsArray);


$graphServiceClient->security()->collaboration()->analyzedEmails()->microsoftGraphSecurityRemediate()->post($requestBody)->wait();

```