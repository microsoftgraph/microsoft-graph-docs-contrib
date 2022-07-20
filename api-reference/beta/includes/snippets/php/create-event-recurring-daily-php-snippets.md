---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$requestBody->setSubject('Let\'s go for lunch');

$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Does noon work for you?');


$requestBody->setBody($body);
$start = new DateTimeTimeZone();
$start->setDateTime('2020-02-25T12:00:00');

$start->setTimeZone('Pacific Standard Time');


$requestBody->setStart($start);
$end = new DateTimeTimeZone();
$end->setDateTime('2020-02-25T14:00:00');

$end->setTimeZone('Pacific Standard Time');


$requestBody->setEnd($end);
$location = new Location();
$location->setDisplayName('Harry\'s Bar');


$requestBody->setLocation($location);
$attendees1 = new ();
$additionalData = [
'emailAddress' => $attendees1 = new ();
$		attendees1->setAddress('AlexW@contoso.OnMicrosoft.com');

$		attendees1->setName('Alex Wilbur');


$attendees1->setEmailAddress($emailAddress);

'type' => 'required', 
];
$attendees1->setAdditionalData($additionalData);



$attendeesArray []= $attendees1;
$requestBody->setAttendees($attendeesArray);


$recurrence = new PatternedRecurrence();
$recurrencePattern = new RecurrencePattern();
$recurrencePattern->setType(new RecurrencePatternType('daily'));

$recurrencePattern->setInterval(interval);


$recurrence->setPattern($recurrencePattern);
$recurrenceRange = new RecurrenceRange();
$recurrenceRange->setType(new RecurrenceRangeType('numbered'));

$recurrenceRange->setStartDate('2020-02-25');

$recurrenceRange->setNumberOfOccurrences(numberOfOccurrences);


$recurrence->setRange($recurrenceRange);

$requestBody->setRecurrence($recurrence);

$requestConfiguration = new EventsRequestBuilderPostRequestConfiguration();

$headers = [
'Prefer' => 'outlook.timezone="Pacific Standard Time"',
];

$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->me()->events()->post($requestBody, $requestConfiguration);


```