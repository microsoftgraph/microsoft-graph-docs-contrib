---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setSubject('Plan summer company picnic');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Let\'s kick-start this event planning!');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2017-08-30T11:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2017-08-30T12:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$attendees1 = new ();
$additionalData = [
'emailAddress' => $attendees1 = new ();
$		attendees1->setAddress('DanaS@contoso.onmicrosoft.com');

$		attendees1->setName('Dana Swope');


$attendees1->setEmailAddress($emailAddress);

'type' => 'Required', 
];
$attendees1->setAdditionalData($additionalData);



$attendeesArray []= $attendees1;
$attendees2 = new ();
$additionalData = [
'emailAddress' => $attendees2 = new ();
$		attendees2->setAddress('AlexW@contoso.onmicrosoft.com');

$		attendees2->setName('Alex Wilber');


$attendees2->setEmailAddress($emailAddress);

'type' => 'Required', 
];
$attendees2->setAdditionalData($additionalData);



$attendeesArray []= $attendees2;
$requestBody->setAttendees($attendeesArray);


$location = new Location();
$location->setDisplayName('Conf Room 3; Fourth Coffee; Home Office');

$location->setLocationType(new LocationType('default'));


$requestBody->setLocation($location);
$locationsLocation1 = new Location();
$locationsLocation1->setDisplayName('Conf Room 3');


$locationsArray []= $locationsLocation1;
$locationsLocation2 = new Location();
$locationsLocation2->setDisplayName('Fourth Coffee');

$locationsLocation2Address = new PhysicalAddress();
$locationsLocation2Address->setStreet('4567 Main St');

$locationsLocation2Address->setCity('Redmond');

$locationsLocation2Address->setState('WA');

$locationsLocation2Address->setCountryOrRegion('US');

$locationsLocation2Address->setPostalCode('32008');


$locationsLocation2->setAddress($locationsLocation2Address);
$locationsLocation2Coordinates = new OutlookGeoCoordinates();
$locationsLocation2Coordinates->setLatitude(latitude);

$locationsLocation2Coordinates->setLongitude(longitude);


$locationsLocation2->setCoordinates($locationsLocation2Coordinates);

$locationsArray []= $locationsLocation2;
$locationsLocation3 = new Location();
$locationsLocation3->setDisplayName('Home Office');


$locationsArray []= $locationsLocation3;
$requestBody->setLocations($locationsArray);


$requestBody->setAllowNewTimeProposals(true);


$requestConfiguration = new EventsRequestBuilderPostRequestConfiguration();

$headers = [
'Prefer' => 'outlook.timezone="Pacific Standard Time"',
];

$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->me()->events()->post($requestBody, $requestConfiguration);


```