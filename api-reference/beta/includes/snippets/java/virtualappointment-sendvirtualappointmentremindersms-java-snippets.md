---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.onlinemeetings.item.sendvirtualappointmentremindersms.SendVirtualAppointmentReminderSmsPostRequestBody sendVirtualAppointmentReminderSmsPostRequestBody = new com.microsoft.graph.beta.users.item.onlinemeetings.item.sendvirtualappointmentremindersms.SendVirtualAppointmentReminderSmsPostRequestBody();
LinkedList<AttendeeNotificationInfo> attendees = new LinkedList<AttendeeNotificationInfo>();
AttendeeNotificationInfo attendeeNotificationInfo = new AttendeeNotificationInfo();
attendeeNotificationInfo.setPhoneNumber("+13129224122");
attendeeNotificationInfo.setTimeZone("Pacific Standard Time");
attendees.add(attendeeNotificationInfo);
AttendeeNotificationInfo attendeeNotificationInfo1 = new AttendeeNotificationInfo();
attendeeNotificationInfo1.setPhoneNumber("+1242421412");
attendeeNotificationInfo1.setTimeZone("Eastern Standard Time");
attendees.add(attendeeNotificationInfo1);
sendVirtualAppointmentReminderSmsPostRequestBody.setAttendees(attendees);
sendVirtualAppointmentReminderSmsPostRequestBody.setRemindBeforeTimeInMinutesType(RemindBeforeTimeInMinutesType.Mins15);
graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").sendVirtualAppointmentReminderSms().post(sendVirtualAppointmentReminderSmsPostRequestBody);


```