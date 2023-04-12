---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Participant();
$additionalData = [
		'clientContext' => 'd45324c1-fcb5-430a-902c-f20af696537c', 
		'participantMixerLevels' => $participantMixerLevels1 = new ();
$		participantMixerLevels1->setParticipant('550fae72-d251-43ec-868c-373732c2704f');

		$participantMixerLevels1->setExclusive(true);

$participantMixerLevels1Ducking = new Ducking();
		$participantMixerLevels1Ducking->setRampActive(50);

		$participantMixerLevels1Ducking->setRampInactive(50);

		$participantMixerLevels1Ducking->setLowerLevel(10);

		$participantMixerLevels1Ducking->setUpperLevel(50);


$participantMixerLevels1->setDucking($participantMixerLevels1Ducking);
$sourceLevels1 = new ();
$		sourceLevels1->setParticipant('632899f8-2ea1-4604-8413-27bd2892079f');

		$sourceLevels1->setLevel(50);

		$sourceLevels1->setDuckOthers(false);


$sourceLevelsArray []= $sourceLevels1;
$participantMixerLevels1->setSourceLevels($sourceLevelsArray);



$participantMixerLevelsArray []= $participantMixerLevels1;
$requestBody->setParticipantMixerLevels($participantMixerLevelsArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->communications()->callsById('call-id')->participantsById('participant-id')->post($requestBody);


```