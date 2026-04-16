---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BookingAppointment;
use Microsoft\Graph\Generated\Models\BookingCustomerInformationBase;
use Microsoft\Graph\Generated\Models\BookingCustomerInformation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingAppointment();
$requestBody->setOdataType('#microsoft.graph.bookingAppointment');
$customersBookingCustomerInformationBase1 = new BookingCustomerInformation();
$customersBookingCustomerInformationBase1->setOdataType('#microsoft.graph.bookingCustomerInformation');
$customersBookingCustomerInformationBase1->setCustomerId('cd56bb19-c348-42c6-af5c-09818c87fb8c');
$customersBookingCustomerInformationBase1->setName('John Doe');
$customersBookingCustomerInformationBase1->setEmailAddress('john.doe@example.com');
$customersBookingCustomerInformationBase1->setPhone('313-555-5555');
$customersArray []= $customersBookingCustomerInformationBase1;
$customersBookingCustomerInformationBase2 = new BookingCustomerInformation();
$customersBookingCustomerInformationBase2->setOdataType('#microsoft.graph.bookingCustomerInformation');
$customersBookingCustomerInformationBase2->setCustomerId('72f148fa-9a86-4c59-b277-f5089d9ea0e7');
$customersBookingCustomerInformationBase2->setName('Jane Smith');
$customersBookingCustomerInformationBase2->setEmailAddress('jane.smith@example.com');
$customersBookingCustomerInformationBase2->setPhone('248-555-5678');
$customersArray []= $customersBookingCustomerInformationBase2;
$requestBody->setCustomers($customersArray);


$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->appointments()->byBookingAppointmentId('bookingAppointment-id')->patch($requestBody)->wait();

```