---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingService bookingService = new BookingService();
bookingService.setOdataType("#microsoft.graph.bookingService");
PeriodAndDuration defaultDuration = PeriodAndDuration.ofDuration(Duration.parse("PT1H30M"));
bookingService.setDefaultDuration(defaultDuration);
Location defaultLocation = new Location();
defaultLocation.setOdataType("#microsoft.graph.location");
PhysicalAddress address = new PhysicalAddress();
address.setOdataType("#microsoft.graph.physicalAddress");
address.setCity("Buffalo");
address.setCountryOrRegion("USA");
address.setPostalCode("98052");
address.setPostOfficeBox(null);
address.setState("NY");
address.setStreet("4567 First Street");
address.setType(null);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("type@odata.type", "#microsoft.graph.physicalAddressType");
address.setAdditionalData(additionalData);
defaultLocation.setAddress(address);
defaultLocation.setCoordinates(null);
defaultLocation.setDisplayName("Contoso Lunch Delivery");
defaultLocation.setLocationEmailAddress(null);
defaultLocation.setLocationType(null);
defaultLocation.setLocationUri(null);
defaultLocation.setUniqueId(null);
defaultLocation.setUniqueIdType(null);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("locationType@odata.type", "#microsoft.graph.locationType");
additionalData1.put("uniqueIdType@odata.type", "#microsoft.graph.locationUniqueIdType");
defaultLocation.setAdditionalData(additionalData1);
bookingService.setDefaultLocation(defaultLocation);
bookingService.setDefaultPrice(10d);
bookingService.setDefaultPriceType(BookingPriceType.FixedPrice);
LinkedList<BookingReminder> defaultReminders = new LinkedList<BookingReminder>();
BookingReminder bookingReminder = new BookingReminder();
bookingReminder.setOdataType("#microsoft.graph.bookingReminder");
bookingReminder.setMessage("Please be reminded that this service is tomorrow.");
PeriodAndDuration offset = PeriodAndDuration.ofDuration(Duration.parse("P1D"));
bookingReminder.setOffset(offset);
bookingReminder.setRecipients(BookingReminderRecipients.AllAttendees);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("recipients@odata.type", "#microsoft.graph.bookingReminderRecipients");
bookingReminder.setAdditionalData(additionalData2);
defaultReminders.add(bookingReminder);
bookingService.setDefaultReminders(defaultReminders);
bookingService.setDescription("Individual bento box lunch delivery");
bookingService.setDisplayName("Bento");
bookingService.setIsLocationOnline(true);
bookingService.setSmsNotificationsEnabled(true);
bookingService.setIsCustomerAllowedToManageBooking(true);
bookingService.setLanguageTag("en-US");
bookingService.setIsHiddenFromCustomers(false);
bookingService.setNotes("Home-cooked special");
PeriodAndDuration postBuffer = PeriodAndDuration.ofDuration(Duration.parse("PT10M"));
bookingService.setPostBuffer(postBuffer);
PeriodAndDuration preBuffer = PeriodAndDuration.ofDuration(Duration.parse("PT5M"));
bookingService.setPreBuffer(preBuffer);
BookingSchedulingPolicy schedulingPolicy = new BookingSchedulingPolicy();
schedulingPolicy.setOdataType("#microsoft.graph.bookingSchedulingPolicy");
schedulingPolicy.setAllowStaffSelection(true);
PeriodAndDuration maximumAdvance = PeriodAndDuration.ofDuration(Duration.parse("P10D"));
schedulingPolicy.setMaximumAdvance(maximumAdvance);
PeriodAndDuration minimumLeadTime = PeriodAndDuration.ofDuration(Duration.parse("PT10H"));
schedulingPolicy.setMinimumLeadTime(minimumLeadTime);
schedulingPolicy.setSendConfirmationsToOwner(true);
PeriodAndDuration timeSlotInterval = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
schedulingPolicy.setTimeSlotInterval(timeSlotInterval);
bookingService.setSchedulingPolicy(schedulingPolicy);
LinkedList<String> staffMemberIds = new LinkedList<String>();
staffMemberIds.add("d90d1e8c-5cfe-48cf-a2d5-966267375b6a");
staffMemberIds.add("2f5f8794-0b29-45b5-b56a-2eb5ff7aa880");
bookingService.setStaffMemberIds(staffMemberIds);
bookingService.setIsAnonymousJoinEnabled(false);
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("defaultPriceType@odata.type", "#microsoft.graph.bookingPriceType");
additionalData3.put("defaultReminders@odata.type", "#Collection(microsoft.graph.bookingReminder)");
additionalData3.put("staffMemberIds@odata.type", "#Collection(String)");
bookingService.setAdditionalData(additionalData3);
BookingService result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").services().post(bookingService);


```