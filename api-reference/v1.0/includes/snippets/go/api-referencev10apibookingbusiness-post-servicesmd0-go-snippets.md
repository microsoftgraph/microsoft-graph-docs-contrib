---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingService()
"@odata.type" := "#microsoft.graph.bookingService"
requestBody.Set"@odata.type"(&"@odata.type") 
defaultDuration := "PT1H30M"
requestBody.SetDefaultDuration(&defaultDuration) 
defaultLocation := graphmodels.NewLocation()
"@odata.type" := "#microsoft.graph.location"
defaultLocation.Set"@odata.type"(&"@odata.type") 
address := graphmodels.NewPhysicalAddress()
"@odata.type" := "#microsoft.graph.physicalAddress"
address.Set"@odata.type"(&"@odata.type") 
city := "Buffalo"
address.SetCity(&city) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
state := "NY"
address.SetState(&state) 
street := "4567 First Street"
address.SetStreet(&street) 
additionalData := map[string]interface{}{
	postOfficeBox := null
address.SetPostOfficeBox(&postOfficeBox) 
	"type@odata.type" : "#microsoft.graph.physicalAddressType", 
	type := null
address.SetType(&type) 
}
address.SetAdditionalData(additionalData)
defaultLocation.SetAddress(address)
coordinates := null
defaultLocation.SetCoordinates(&coordinates) 
displayName := "Contoso Lunch Delivery"
defaultLocation.SetDisplayName(&displayName) 
locationEmailAddress := null
defaultLocation.SetLocationEmailAddress(&locationEmailAddress) 
locationType := null
defaultLocation.SetLocationType(&locationType) 
locationUri := null
defaultLocation.SetLocationUri(&locationUri) 
uniqueId := null
defaultLocation.SetUniqueId(&uniqueId) 
uniqueIdType := null
defaultLocation.SetUniqueIdType(&uniqueIdType) 
additionalData := map[string]interface{}{
	"locationType@odata.type" : "#microsoft.graph.locationType", 
	"uniqueIdType@odata.type" : "#microsoft.graph.locationUniqueIdType", 
}
defaultLocation.SetAdditionalData(additionalData)
requestBody.SetDefaultLocation(defaultLocation)
defaultPrice := float64(10)
requestBody.SetDefaultPrice(&defaultPrice) 
defaultPriceType := graphmodels.FIXEDPRICE_BOOKINGPRICETYPE 
requestBody.SetDefaultPriceType(&defaultPriceType) 


bookingReminder := graphmodels.NewBookingReminder()
"@odata.type" := "#microsoft.graph.bookingReminder"
bookingReminder.Set"@odata.type"(&"@odata.type") 
message := "Please be reminded that this service is tomorrow."
bookingReminder.SetMessage(&message) 
offset := "P1D"
bookingReminder.SetOffset(&offset) 
recipients := graphmodels.ALLATTENDEES_BOOKINGREMINDERRECIPIENTS 
bookingReminder.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"recipients@odata.type" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder.SetAdditionalData(additionalData)

defaultReminders := []graphmodels.BookingReminderable {
	bookingReminder,

}
requestBody.SetDefaultReminders(defaultReminders)
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
schedulingPolicy := graphmodels.NewBookingSchedulingPolicy()
"@odata.type" := "#microsoft.graph.bookingSchedulingPolicy"
schedulingPolicy.Set"@odata.type"(&"@odata.type") 
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
requestBody.SetSchedulingPolicy(schedulingPolicy)
staffMemberIds := []string {
	"d90d1e8c-5cfe-48cf-a2d5-966267375b6a",
	"2f5f8794-0b29-45b5-b56a-2eb5ff7aa880",

}
requestBody.SetStaffMemberIds(staffMemberIds)
additionalData := map[string]interface{}{
	"defaultPriceType@odata.type" : "#microsoft.graph.bookingPriceType", 
	"defaultReminders@odata.type" : "#Collection(microsoft.graph.bookingReminder)", 
	"staffMemberIds@odata.type" : "#Collection(String)", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").Services().Post(requestBody)


```