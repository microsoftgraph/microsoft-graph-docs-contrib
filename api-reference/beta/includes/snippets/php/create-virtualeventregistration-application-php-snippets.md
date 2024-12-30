---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventRegistration;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventExternalRegistrationInformation;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventRegistrationQuestionAnswer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventRegistration();
$requestBody->setFirstName('Diane');
$requestBody->setLastName('Demoss');
$requestBody->setEmail('DianeDemoss@contoso.com');
$externalRegistrationInformation = new VirtualEventExternalRegistrationInformation();
$externalRegistrationInformation->setReferrer('Facebook');
$externalRegistrationInformation->setRegistrationId('myExternalRegistrationId');
$requestBody->setExternalRegistrationInformation($externalRegistrationInformation);
$requestBody->setPreferredTimezone('Pacific Standard Time');
$requestBody->setPreferredLanguage('en-us');
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1 = new VirtualEventRegistrationQuestionAnswer();
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1->setQuestionId('95320781-96b3-4b8f-8cf8-e6561d23447a');
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1->setValue(null);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1->setBooleanValue(null);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1->setMultiChoiceValues(['Seattle', 	]);
$registrationQuestionAnswersArray []= $registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer1;
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2 = new VirtualEventRegistrationQuestionAnswer();
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2->setQuestionId('4577afdb-8bee-4219-b482-04b52c6b855c');
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2->setValue(null);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2->setBooleanValue(true);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2->setMultiChoiceValues([	]);
$registrationQuestionAnswersArray []= $registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer2;
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3 = new VirtualEventRegistrationQuestionAnswer();
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3->setQuestionId('80fefcf1-caf7-4cd3-b8d7-159e17c47f20');
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3->setValue(null);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3->setBooleanValue(null);
$registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3->setMultiChoiceValues(['London', 'New York City', 	]);
$registrationQuestionAnswersArray []= $registrationQuestionAnswersVirtualEventRegistrationQuestionAnswer3;
$requestBody->setRegistrationQuestionAnswers($registrationQuestionAnswersArray);


$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->registrations()->post($requestBody)->wait();

```