---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewBookingAppointment()
customerEmailAddress := "jordanm@contoso.com"
requestBody.SetCustomerEmailAddress(&customerEmailAddress)
customerLocation := msgraphsdk.NewLocation()
requestBody.SetCustomerLocation(customerLocation)
address := msgraphsdk.NewPhysicalAddress()
customerLocation.SetAddress(address)
city := "Buffalo"
address.SetCity(&city)
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion)
postalCode := "98052"
address.SetPostalCode(&postalCode)
address.SetPostOfficeBox(nil)
state := "NY"
address.SetState(&state)
street := "123 First Avenue"
address.SetStreet(&street)
address.SetType(nil)
address.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.physicalAddress",
	"type@odata.type": "#microsoft.graph.physicalAddressType",
}
customerLocation.SetCoordinates(nil)
displayName := "Customer"
customerLocation.SetDisplayName(&displayName)
customerLocation.SetLocationEmailAddress(nil)
customerLocation.SetLocationType(nil)
customerLocation.SetLocationUri(nil)
customerLocation.SetUniqueId(nil)
customerLocation.SetUniqueIdType(nil)
customerLocation.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.location",
	"locationType@odata.type": "#microsoft.graph.locationType",
	"uniqueIdType@odata.type": "#microsoft.graph.locationUniqueIdType",
}
customerName := "Jordan Miller"
requestBody.SetCustomerName(&customerName)
customerNotes := "Please be on time."
requestBody.SetCustomerNotes(&customerNotes)
customerPhone := "213-555-0199"
requestBody.SetCustomerPhone(&customerPhone)
customerTimeZone := "America/Chicago"
requestBody.SetCustomerTimeZone(&customerTimeZone)
smsNotificationsEnabled := true
requestBody.SetSmsNotificationsEnabled(&smsNotificationsEnabled)
end := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetEnd(end)
dateTime := "2018-05-01T12:30:00.0000000+00:00"
end.SetDateTime(&dateTime)
timeZone := "UTC"
end.SetTimeZone(&timeZone)
end.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.dateTimeTimeZone",
}
invoiceAmount := float64(10)
requestBody.SetInvoiceAmount(&invoiceAmount)
invoiceDate := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetInvoiceDate(invoiceDate)
dateTime := "2018-05-01T12:30:00.0000000+00:00"
invoiceDate.SetDateTime(&dateTime)
timeZone := "UTC"
invoiceDate.SetTimeZone(&timeZone)
invoiceDate.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.dateTimeTimeZone",
}
invoiceId := "1001"
requestBody.SetInvoiceId(&invoiceId)
invoiceStatus := "open"
requestBody.SetInvoiceStatus(&invoiceStatus)
invoiceUrl := "theInvoiceUrl"
requestBody.SetInvoiceUrl(&invoiceUrl)
isLocationOnline := true
requestBody.SetIsLocationOnline(&isLocationOnline)
optOutOfCustomerEmail := false
requestBody.SetOptOutOfCustomerEmail(&optOutOfCustomerEmail)
postBuffer := "PT10M"
requestBody.SetPostBuffer(&postBuffer)
preBuffer := "PT5M"
requestBody.SetPreBuffer(&preBuffer)
price := float64(10)
requestBody.SetPrice(&price)
priceType := "fixedPrice"
requestBody.SetPriceType(&priceType)
requestBody.SetReminders( []BookingReminder {
	msgraphsdk.NewBookingReminder(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingReminder",
		"message": "This service is tomorrow",
		"offset": "P1D",
		"recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
		"recipients": "allAttendees",
	}
	msgraphsdk.NewBookingReminder(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingReminder",
		"message": "Please be available to enjoy your lunch service.",
		"offset": "PT1H",
		"recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
		"recipients": "customer",
	}
	msgraphsdk.NewBookingReminder(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingReminder",
		"message": "Please check traffic for next cater.",
		"offset": "PT2H",
		"recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
		"recipients": "staff",
	}
}
serviceId := "57da6774-a087-4d69-b0e6-6fb82c339976"
requestBody.SetServiceId(&serviceId)
serviceLocation := msgraphsdk.NewLocation()
requestBody.SetServiceLocation(serviceLocation)
address := msgraphsdk.NewPhysicalAddress()
serviceLocation.SetAddress(address)
city := "Buffalo"
address.SetCity(&city)
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion)
postalCode := "98052"
address.SetPostalCode(&postalCode)
address.SetPostOfficeBox(nil)
state := "NY"
address.SetState(&state)
street := "123 First Avenue"
address.SetStreet(&street)
address.SetType(nil)
address.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.physicalAddress",
	"type@odata.type": "#microsoft.graph.physicalAddressType",
}
serviceLocation.SetCoordinates(nil)
displayName := "Customer location"
serviceLocation.SetDisplayName(&displayName)
serviceLocation.SetLocationEmailAddress(nil)
serviceLocation.SetLocationType(nil)
serviceLocation.SetLocationUri(nil)
serviceLocation.SetUniqueId(nil)
serviceLocation.SetUniqueIdType(nil)
serviceLocation.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.location",
	"locationType@odata.type": "#microsoft.graph.locationType",
	"uniqueIdType@odata.type": "#microsoft.graph.locationUniqueIdType",
}
serviceName := "Catered bento"
requestBody.SetServiceName(&serviceName)
serviceNotes := "Customer requires punctual service."
requestBody.SetServiceNotes(&serviceNotes)
start := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetStart(start)
dateTime := "2018-05-01T12:00:00.0000000+00:00"
start.SetDateTime(&dateTime)
timeZone := "UTC"
start.SetTimeZone(&timeZone)
start.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.dateTimeTimeZone",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingAppointment",
	"invoiceStatus@odata.type": "#microsoft.graph.bookingInvoiceStatus",
	"priceType@odata.type": "#microsoft.graph.bookingPriceType",
	"reminders@odata.type": "#Collection(microsoft.graph.bookingReminder)",
}
options := &msgraphsdk.AppointmentsRequestBuilderPostOptions{
	Body: requestBody,
}
bookingBusinessId := "bookingBusiness-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).Appointments().Post(options);


```