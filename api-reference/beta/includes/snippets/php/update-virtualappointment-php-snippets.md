---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualAppointment();
$requestBody->setOdataType('#microsoft.graph.virtualAppointment');

$requestBody->setId('0c7fda79-ff00-f57f-37e3-28183b6d09b5');

$settings = new VirtualAppointmentSettings();
$settings->setOdataType('microsoft.graph.virtualAppointmentSettings');

$settings->setAllowClientToJoinUsingBrowser(true);


$requestBody->setSettings($settings);
$appointmentClientsVirtualAppointmentUser1 = new VirtualAppointmentUser();
$appointmentClientsVirtualAppointmentUser1->setOdataType('microsoft.graph.virtualAppointmentUser');

$appointmentClientsVirtualAppointmentUser1->setEmailAddress('gradya@contoso.com');

$appointmentClientsVirtualAppointmentUser1->setDisplayName('Grady Archie');

$appointmentClientsVirtualAppointmentUser1->setSmsCapablePhoneNumber('123-456-7890');


$appointmentClientsArray []= $appointmentClientsVirtualAppointmentUser1;
$requestBody->setAppointmentClients($appointmentClientsArray);


$requestBody->setExternalAppointmentId('AAMkADKnAAA=');

$requestBody->setExternalAppointmentUrl('https://anyschedulingsystem.com/api/appointments/MkADKnAAA=');

$requestBody->setAppointmentClientJoinWebUrl('https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True');


$requestConfiguration = new VirtualAppointmentRequestBuilderPatchRequestConfiguration();
$headers = [
	'If-Match' => 'W/"ZfYdV7Meckeip07P//nwjAAADyI7NQ=="',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->virtualAppointment()->patch($requestBody, $requestConfiguration);


```