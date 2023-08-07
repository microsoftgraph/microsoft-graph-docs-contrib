---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointment bookingAppointment = new BookingAppointment();
bookingAppointment.customerTimeZone = "America/Chicago";
bookingAppointment.smsNotificationsEnabled = true;
DateTimeTimeZone endDateTime = new DateTimeTimeZone();
endDateTime.dateTime = "2018-05-01T12:30:00+00:00";
endDateTime.timeZone = "UTC";
bookingAppointment.endDateTime = endDateTime;
bookingAppointment.isLocationOnline = true;
bookingAppointment.optOutOfCustomerEmail = false;
bookingAppointment.anonymousJoinWebUrl = null;
bookingAppointment.postBuffer = DatatypeFactory.newInstance().newDuration("PT10M");
bookingAppointment.preBuffer = DatatypeFactory.newInstance().newDuration("PT5M");
bookingAppointment.price = 10.0d;
bookingAppointment.additionalDataManager().put("priceType@odata.type", new JsonPrimitive("#microsoft.graph.bookingPriceType"));
bookingAppointment.priceType = BookingPriceType.FIXED_PRICE;
bookingAppointment.additionalDataManager().put("reminders@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingReminder)"));
LinkedList<BookingReminder> remindersList = new LinkedList<BookingReminder>();
BookingReminder reminders = new BookingReminder();
reminders.message = "This service is tomorrow";
reminders.offset = DatatypeFactory.newInstance().newDuration("P1D");
reminders.additionalDataManager().put("recipients@odata.type", new JsonPrimitive("#microsoft.graph.bookingReminderRecipients"));
reminders.recipients = BookingReminderRecipients.ALL_ATTENDEES;
remindersList.add(reminders);
BookingReminder reminders1 = new BookingReminder();
reminders1.message = "Please be available to enjoy your lunch service.";
reminders1.offset = DatatypeFactory.newInstance().newDuration("PT1H");
reminders1.additionalDataManager().put("recipients@odata.type", new JsonPrimitive("#microsoft.graph.bookingReminderRecipients"));
reminders1.recipients = BookingReminderRecipients.CUSTOMER;
remindersList.add(reminders1);
BookingReminder reminders2 = new BookingReminder();
reminders2.message = "Please check traffic for next cater.";
reminders2.offset = DatatypeFactory.newInstance().newDuration("PT2H");
reminders2.additionalDataManager().put("recipients@odata.type", new JsonPrimitive("#microsoft.graph.bookingReminderRecipients"));
reminders2.recipients = BookingReminderRecipients.STAFF;
remindersList.add(reminders2);
bookingAppointment.reminders = remindersList;
bookingAppointment.serviceId = "57da6774-a087-4d69-b0e6-6fb82c339976";
Location serviceLocation = new Location();
PhysicalAddress address = new PhysicalAddress();
address.city = "Buffalo";
address.countryOrRegion = "USA";
address.postalCode = "98052";
address.postOfficeBox = null;
address.state = "NY";
address.street = "123 First Avenue";
address.additionalDataManager().put("type@odata.type", new JsonPrimitive("#microsoft.graph.physicalAddressType"));
address.type = null;
serviceLocation.address = address;
serviceLocation.coordinates = null;
serviceLocation.displayName = "Customer location";
serviceLocation.locationEmailAddress = null;
serviceLocation.additionalDataManager().put("locationType@odata.type", new JsonPrimitive("#microsoft.graph.locationType"));
serviceLocation.locationType = null;
serviceLocation.locationUri = null;
serviceLocation.uniqueId = null;
serviceLocation.additionalDataManager().put("uniqueIdType@odata.type", new JsonPrimitive("#microsoft.graph.locationUniqueIdType"));
serviceLocation.uniqueIdType = null;
bookingAppointment.serviceLocation = serviceLocation;
bookingAppointment.serviceName = "Catered bento";
bookingAppointment.serviceNotes = "Customer requires punctual service.";
LinkedList<String> staffMemberIdsList = new LinkedList<String>();
staffMemberIdsList.add("8ee1c803-a1fa-406d-8259-7ab53233f148");
bookingAppointment.staffMemberIds = staffMemberIdsList;
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.dateTime = "2018-05-01T12:00:00+00:00";
startDateTime.timeZone = "UTC";
bookingAppointment.startDateTime = startDateTime;
bookingAppointment.maximumAttendeesCount = 5;
bookingAppointment.filledAttendeesCount = 1;
bookingAppointment.additionalDataManager().put("customers@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingCustomerInformation)"));
LinkedList<BookingCustomerInformationBase> customersList = new LinkedList<BookingCustomerInformationBase>();
BookingCustomerInformation customers = new BookingCustomerInformation();
customers.customerId = "7ed53fa5-9ef2-4f2f-975b-27447440bc09";
customers.name = "Jordan Miller";
customers.emailAddress = "jordanm@contoso.com";
customers.phone = "213-555-0199";
customers.notes = null;
Location location = new Location();
location.displayName = "Customer";
location.locationEmailAddress = null;
location.locationUri = "";
location.locationType = null;
location.uniqueId = null;
location.uniqueIdType = null;
PhysicalAddress address1 = new PhysicalAddress();
address1.street = "";
address1.city = "";
address1.state = "";
address1.countryOrRegion = "";
address1.postalCode = "";
location.address = address1;
OutlookGeoCoordinates coordinates1 = new OutlookGeoCoordinates();
coordinates1.altitude = 0d;
coordinates1.latitude = 0d;
coordinates1.longitude = 0d;
coordinates1.accuracy = 0d;
coordinates1.altitudeAccuracy = 0d;
location.coordinates = coordinates1;
customers.location = location;
customers.timeZone = "America/Chicago";
LinkedList<BookingQuestionAnswer> customQuestionAnswersList = new LinkedList<BookingQuestionAnswer>();
BookingQuestionAnswer customQuestionAnswers = new BookingQuestionAnswer();
customQuestionAnswers.questionId = "3bc6fde0-4ad3-445d-ab17-0fc15dba0774";
customQuestionAnswers.question = "What is your age?";
customQuestionAnswers.answerInputType = AnswerInputType.TEXT;
LinkedList<String> answerOptionsList = new LinkedList<String>();
customQuestionAnswers.answerOptions = answerOptionsList;
customQuestionAnswers.isRequired = true;
customQuestionAnswers.answer = "25";
LinkedList<String> selectedOptionsList = new LinkedList<String>();
customQuestionAnswers.selectedOptions = selectedOptionsList;
customQuestionAnswersList.add(customQuestionAnswers);
customers.customQuestionAnswers = customQuestionAnswersList;
customersList.add(customers);
bookingAppointment.customers = customersList;

graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").appointments()
	.buildRequest()
	.post(bookingAppointment);

```