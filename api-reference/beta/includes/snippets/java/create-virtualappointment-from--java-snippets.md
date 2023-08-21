---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ETag", "W/\"ZfYdV7Meckeip07P//nwjAAADyI7NQ==\""));

VirtualAppointment virtualAppointment = new VirtualAppointment();
VirtualAppointmentSettings settings = new VirtualAppointmentSettings();
settings.allowClientToJoinUsingBrowser = false;
virtualAppointment.settings = settings;
LinkedList<VirtualAppointmentUser> appointmentClientsList = new LinkedList<VirtualAppointmentUser>();
VirtualAppointmentUser appointmentClients = new VirtualAppointmentUser();
appointmentClients.emailAddress = "gradya@contoso.com";
appointmentClients.displayName = "Grady Archie";
appointmentClients.smsCapablePhoneNumber = "123-456-7890";
appointmentClientsList.add(appointmentClients);
virtualAppointment.appointmentClients = appointmentClientsList;
virtualAppointment.externalAppointmentId = "AAMkADKnAAA=";
virtualAppointment.externalAppointmentUrl = "https://anyschedulingsystem.com/api/appointments/MkADKnAAA=";

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi").virtualAppointment()
	.buildRequest( requestOptions )
	.put(virtualAppointment);

```