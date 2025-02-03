---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingStaffMember bookingStaffMember = new BookingStaffMember();
LinkedList<BookingWorkHours> workingHours = new LinkedList<BookingWorkHours>();
BookingWorkHours bookingWorkHours = new BookingWorkHours();
bookingWorkHours.setOdataType("#microsoft.graph.bookingWorkHours");
bookingWorkHours.setDay(DayOfWeek.Monday);
LinkedList<BookingWorkTimeSlot> timeSlots = new LinkedList<BookingWorkTimeSlot>();
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
BookingWorkTimeSlot bookingWorkTimeSlot = new BookingWorkTimeSlot();
bookingWorkTimeSlot.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime end = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot.setEnd(end);
LocalTime start = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot.setStart(start);
timeSlots1.add(bookingWorkTimeSlot);
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
BookingWorkTimeSlot bookingWorkTimeSlot1 = new BookingWorkTimeSlot();
bookingWorkTimeSlot1.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime end1 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot1.setEnd(end1);
LocalTime start1 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot1.setStart(start1);
timeSlots2.add(bookingWorkTimeSlot1);
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
BookingWorkTimeSlot bookingWorkTimeSlot2 = new BookingWorkTimeSlot();
bookingWorkTimeSlot2.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime end2 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot2.setEnd(end2);
LocalTime start2 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot2.setStart(start2);
timeSlots3.add(bookingWorkTimeSlot2);
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
BookingWorkTimeSlot bookingWorkTimeSlot3 = new BookingWorkTimeSlot();
bookingWorkTimeSlot3.setOdataType("#microsoft.graph.bookingWorkTimeSlot");
LocalTime end3 = LocalTime.parse("17:00:00.0000000");
bookingWorkTimeSlot3.setEnd(end3);
LocalTime start3 = LocalTime.parse("08:00:00.0000000");
bookingWorkTimeSlot3.setStart(start3);
timeSlots4.add(bookingWorkTimeSlot3);
bookingWorkHours4.setTimeSlots(timeSlots4);
HashMap<String, Object> additionalData4 = new HashMap<String, Object>();
additionalData4.put("day@odata.type", "#microsoft.graph.dayOfWeek");
additionalData4.put("timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)");
bookingWorkHours4.setAdditionalData(additionalData4);
workingHours.add(bookingWorkHours4);
bookingStaffMember.setWorkingHours(workingHours);
BookingStaffMember result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").staffMembers().byBookingStaffMemberId("{bookingStaffMember-id}").patch(bookingStaffMember);


```