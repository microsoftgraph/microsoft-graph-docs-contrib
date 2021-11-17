---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewBookingService()
defaultDuration := "PT1H30M"
requestBody.SetDefaultDuration(&defaultDuration)
defaultLocation := msgraphsdk.NewLocation()
requestBody.SetDefaultLocation(defaultLocation)
address := msgraphsdk.NewPhysicalAddress()
defaultLocation.SetAddress(address)
city := "Buffalo"
address.SetCity(&city)
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion)
postalCode := "98052"
address.SetPostalCode(&postalCode)
address.SetPostOfficeBox(nil)
state := "NY"
address.SetState(&state)
street := "4567 First Street"
address.SetStreet(&street)
address.SetType(nil)
address.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.physicalAddress",
	"type@odata.type": "#microsoft.graph.physicalAddressType",
}
defaultLocation.SetCoordinates(nil)
displayName := "Contoso Lunch Delivery"
defaultLocation.SetDisplayName(&displayName)
defaultLocation.SetLocationEmailAddress(nil)
defaultLocation.SetLocationType(nil)
defaultLocation.SetLocationUri(nil)
defaultLocation.SetUniqueId(nil)
defaultLocation.SetUniqueIdType(nil)
defaultLocation.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.location",
	"locationType@odata.type": "#microsoft.graph.locationType",
	"uniqueIdType@odata.type": "#microsoft.graph.locationUniqueIdType",
}
defaultPrice := float64(10)
requestBody.SetDefaultPrice(&defaultPrice)
defaultPriceType := "fixedPrice"
requestBody.SetDefaultPriceType(&defaultPriceType)
requestBody.SetDefaultReminders( []BookingReminder {
	msgraphsdk.NewBookingReminder(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.bookingReminder",
		"message": "Please be reminded that this service is tomorrow.",
		"offset": "P1D",
		"recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
		"recipients": "allAttendees",
	}
}
description := "Individual bento box lunch delivery"
requestBody.SetDescription(&description)
displayName := "Bento"
requestBody.SetDisplayName(&displayName)
isLocationOnline := true
requestBody.SetIsLocationOnline(&isLocationOnline)
smsNotificationsEnabled := true
requestBody.SetSmsNotificationsEnabled(&smsNotificationsEnabled)
isHiddenFromCustomers := false
requestBody.SetIsHiddenFromCustomers(&isHiddenFromCustomers)
notes := "Home-cooked special"
requestBody.SetNotes(&notes)
postBuffer := "PT10M"
requestBody.SetPostBuffer(&postBuffer)
preBuffer := "PT5M"
requestBody.SetPreBuffer(&preBuffer)
schedulingPolicy := msgraphsdk.NewBookingSchedulingPolicy()
requestBody.SetSchedulingPolicy(schedulingPolicy)
allowStaffSelection := true
schedulingPolicy.SetAllowStaffSelection(&allowStaffSelection)
maximumAdvance := "P10D"
schedulingPolicy.SetMaximumAdvance(&maximumAdvance)
minimumLeadTime := "PT10H"
schedulingPolicy.SetMinimumLeadTime(&minimumLeadTime)
sendConfirmationsToOwner := true
schedulingPolicy.SetSendConfirmationsToOwner(&sendConfirmationsToOwner)
timeSlotInterval := "PT1H"
schedulingPolicy.SetTimeSlotInterval(&timeSlotInterval)
schedulingPolicy.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingSchedulingPolicy",
}
requestBody.SetStaffMemberIds( []String {
	"d90d1e8c-5cfe-48cf-a2d5-966267375b6a",
	"2f5f8794-0b29-45b5-b56a-2eb5ff7aa880",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingService",
	"defaultPriceType@odata.type": "#microsoft.graph.bookingPriceType",
	"defaultReminders@odata.type": "#Collection(microsoft.graph.bookingReminder)",
	"staffMemberIds@odata.type": "#Collection(String)",
}
options := &msgraphsdk.ServicesRequestBuilderPostOptions{
	Body: requestBody,
}
bookingBusinessId := "bookingBusiness-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).Services().Post(options)


```