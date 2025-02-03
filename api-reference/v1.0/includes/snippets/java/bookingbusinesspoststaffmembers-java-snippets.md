---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingStaffMember bookingStaffMemberBase = new BookingStaffMember();
bookingStaffMemberBase.setOdataType("#microsoft.graph.bookingStaffMember");
bookingStaffMemberBase.setDisplayName("Dana Swope");
bookingStaffMemberBase.setEmailAddress("danas@contoso.com");
bookingStaffMemberBase.setRole(BookingStaffRole.ExternalGuest);
bookingStaffMemberBase.setTimeZone("America/Chicago");
bookingStaffMemberBase.setUseBusinessHours(true);
LinkedList<BookingWorkHours> workingHours = new LinkedList<BookingWorkHours>();
BookingWorkHours bookingWorkHours = new BookingWorkHours();
bookingWorkHours.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours.setDay(DayOfWeek.Monday);
LinkedList<BookingWorkTimeSlot> timeSlots = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot bookingWorkTimeSlot = new BookingWorkTimeSlot();
bookingWorkTimeSlot.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime endTime = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot.setEndTime(endTime);
LocalTime startTime = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot.setStartTime(startTime);
timeSlots.add(bookingWorkTimeSlot);
bookingWorkHours.setTimeSlots(timeSlots);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours.setAdditionalData(additionalData);
workingHours.add(bookingWorkHours);
BookingWorkHours bookingWorkHours1 = new BookingWorkHours();
bookingWorkHours1.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours1.setDay(DayOfWeek.Tuesday);
LinkedList<BookingWorkTimeSlot> timeSlots1 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot bookingWorkTimeSlot1 = new BookingWorkTimeSlot();
bookingWorkTimeSlot1.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime endTime1 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot1.setEndTime(endTime1);
LocalTime startTime1 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot1.setStartTime(startTime1);
timeSlots1.add(bookingWorkTimeSlot1);
bookingWorkHours1.setTimeSlots(timeSlots1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData1.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours1.setAdditionalData(additionalData1);
workingHours.add(bookingWorkHours1);
BookingWorkHours bookingWorkHours2 = new BookingWorkHours();
bookingWorkHours2.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours2.setDay(DayOfWeek.Wednesday);
LinkedList<BookingWorkTimeSlot> timeSlots2 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot bookingWorkTimeSlot2 = new BookingWorkTimeSlot();
bookingWorkTimeSlot2.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime endTime2 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot2.setEndTime(endTime2);
LocalTime startTime2 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot2.setStartTime(startTime2);
timeSlots2.add(bookingWorkTimeSlot2);
bookingWorkHours2.setTimeSlots(timeSlots2);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData2.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours2.setAdditionalData(additionalData2);
workingHours.add(bookingWorkHours2);
BookingWorkHours bookingWorkHours3 = new BookingWorkHours();
bookingWorkHours3.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours3.setDay(DayOfWeek.Thursday);
LinkedList<BookingWorkTimeSlot> timeSlots3 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot bookingWorkTimeSlot3 = new BookingWorkTimeSlot();
bookingWorkTimeSlot3.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime endTime3 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot3.setEndTime(endTime3);
LocalTime startTime3 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot3.setStartTime(startTime3);
timeSlots3.add(bookingWorkTimeSlot3);
bookingWorkHours3.setTimeSlots(timeSlots3);
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData3.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours3.setAdditionalData(additionalData3);
workingHours.add(bookingWorkHours3);
BookingWorkHours bookingWorkHours4 = new BookingWorkHours();
bookingWorkHours4.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours4.setDay(DayOfWeek.Friday);
LinkedList<BookingWorkTimeSlot> timeSlots4 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot bookingWorkTimeSlot4 = new BookingWorkTimeSlot();
bookingWorkTimeSlot4.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime endTime4 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot4.setEndTime(endTime4);
LocalTime startTime4 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot4.setStartTime(startTime4);
timeSlots4.add(bookingWorkTimeSlot4);
bookingWorkHours4.setTimeSlots(timeSlots4);
HashMap<String, Object> additionalData4 = new HashMap<String, Object>();
additionalData4.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData4.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours4.setAdditionalData(additionalData4);
workingHours.add(bookingWorkHours4);
bookingStaffMemberBase.setWorkingHours(workingHours);
bookingStaffMemberBase.setIsEmailNotificationEnabled(false);
HashMap<String, Object> additionalData5 = new HashMap<String, Object>();
additionalData5.put("role@odata.type", "#microsoft.graph.bookingStaffRole");
additionalData5.put("workingHours@odata.type", "#Collection(microsoft.graph.bookingWorkHours)");
bookingStaffMemberBase.setAdditionalData(additionalData5);
BookingStaffMemberBase result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").staffMembers().post(bookingStaffMemberBase);


```