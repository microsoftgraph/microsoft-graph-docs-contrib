---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingAppointment()
"@odata.type" := "#microsoft.graph.bookingAppointment"
requestBody.Set"@odata.type"(&"@odata.type") 
customerEmailAddress := "jordanm@contoso.com"
requestBody.SetCustomerEmailAddress(&customerEmailAddress) 
customerLocation := graphmodels.NewLocation()
"@odata.type" := "#microsoft.graph.location"
customerLocation.Set"@odata.type"(&"@odata.type") 
address := graphmodels.NewPhysicalAddress()
"@odata.type" := "#microsoft.graph.physicalAddress"
address.Set"@odata.type"(&"@odata.type") 
city := "Buffalo"
address.SetCity(&city) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
postOfficeBox := null
address.SetPostOfficeBox(&postOfficeBox) 
state := "NY"
address.SetState(&state) 
street := "123 First Avenue"
address.SetStreet(&street) 
type := null
address.SetType(&type) 
additionalData := map[string]interface{}{
	"type@odata.type" : "#microsoft.graph.physicalAddressType", 
}
address.SetAdditionalData(additionalData)
customerLocation.SetAddress(address)
coordinates := null
customerLocation.SetCoordinates(&coordinates) 
displayName := "Customer"
customerLocation.SetDisplayName(&displayName) 
locationEmailAddress := null
customerLocation.SetLocationEmailAddress(&locationEmailAddress) 
locationType := null
customerLocation.SetLocationType(&locationType) 
locationUri := null
customerLocation.SetLocationUri(&locationUri) 
uniqueId := null
customerLocation.SetUniqueId(&uniqueId) 
uniqueIdType := null
customerLocation.SetUniqueIdType(&uniqueIdType) 
additionalData := map[string]interface{}{
	"locationType@odata.type" : "#microsoft.graph.locationType", 
	"uniqueIdType@odata.type" : "#microsoft.graph.locationUniqueIdType", 
}
customerLocation.SetAdditionalData(additionalData)
requestBody.SetCustomerLocation(customerLocation)
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
end := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
end.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-01T12:30:00.0000000+00:00"
end.SetDateTime(&dateTime) 
timeZone := "UTC"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
invoiceAmount := float64(10)
requestBody.SetInvoiceAmount(&invoiceAmount) 
invoiceDate := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
invoiceDate.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-01T12:30:00.0000000+00:00"
invoiceDate.SetDateTime(&dateTime) 
timeZone := "UTC"
invoiceDate.SetTimeZone(&timeZone) 
requestBody.SetInvoiceDate(invoiceDate)
invoiceId := "1001"
requestBody.SetInvoiceId(&invoiceId) 
invoiceStatus := graphmodels.OPEN_BOOKINGINVOICESTATUS 
requestBody.SetInvoiceStatus(&invoiceStatus) 
invoiceUrl := "theInvoiceUrl"
requestBody.SetInvoiceUrl(&invoiceUrl) 
isLocationOnline := true
requestBody.SetIsLocationOnline(&isLocationOnline) 
optOutOfCustomerEmail := false
requestBody.SetOptOutOfCustomerEmail(&optOutOfCustomerEmail) 
anonymousJoinWebUrl := null
requestBody.SetAnonymousJoinWebUrl(&anonymousJoinWebUrl) 
postBuffer := "PT10M"
requestBody.SetPostBuffer(&postBuffer) 
preBuffer := "PT5M"
requestBody.SetPreBuffer(&preBuffer) 
price := float64(10)
requestBody.SetPrice(&price) 
priceType := graphmodels.FIXEDPRICE_BOOKINGPRICETYPE 
requestBody.SetPriceType(&priceType) 


bookingReminder := graphmodels.NewBookingReminder()
"@odata.type" := "#microsoft.graph.bookingReminder"
bookingReminder.Set"@odata.type"(&"@odata.type") 
message := "This service is tomorrow"
bookingReminder.SetMessage(&message) 
offset := "P1D"
bookingReminder.SetOffset(&offset) 
recipients := graphmodels.ALLATTENDEES_BOOKINGREMINDERRECIPIENTS 
bookingReminder.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"recipients@odata.type" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder.SetAdditionalData(additionalData)
bookingReminder1 := graphmodels.NewBookingReminder()
"@odata.type" := "#microsoft.graph.bookingReminder"
bookingReminder1.Set"@odata.type"(&"@odata.type") 
message := "Please be available to enjoy your lunch service."
bookingReminder1.SetMessage(&message) 
offset := "PT1H"
bookingReminder1.SetOffset(&offset) 
recipients := graphmodels.CUSTOMER_BOOKINGREMINDERRECIPIENTS 
bookingReminder1.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"recipients@odata.type" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder1.SetAdditionalData(additionalData)
bookingReminder2 := graphmodels.NewBookingReminder()
"@odata.type" := "#microsoft.graph.bookingReminder"
bookingReminder2.Set"@odata.type"(&"@odata.type") 
message := "Please check traffic for next cater."
bookingReminder2.SetMessage(&message) 
offset := "PT2H"
bookingReminder2.SetOffset(&offset) 
recipients := graphmodels.STAFF_BOOKINGREMINDERRECIPIENTS 
bookingReminder2.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"recipients@odata.type" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder2.SetAdditionalData(additionalData)

reminders := []graphmodels.BookingReminderable {
	bookingReminder,
	bookingReminder1,
	bookingReminder2,

}
requestBody.SetReminders(reminders)
serviceId := "57da6774-a087-4d69-b0e6-6fb82c339976"
requestBody.SetServiceId(&serviceId) 
serviceLocation := graphmodels.NewLocation()
"@odata.type" := "#microsoft.graph.location"
serviceLocation.Set"@odata.type"(&"@odata.type") 
address := graphmodels.NewPhysicalAddress()
"@odata.type" := "#microsoft.graph.physicalAddress"
address.Set"@odata.type"(&"@odata.type") 
city := "Buffalo"
address.SetCity(&city) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
postOfficeBox := null
address.SetPostOfficeBox(&postOfficeBox) 
state := "NY"
address.SetState(&state) 
street := "123 First Avenue"
address.SetStreet(&street) 
type := null
address.SetType(&type) 
additionalData := map[string]interface{}{
	"type@odata.type" : "#microsoft.graph.physicalAddressType", 
}
address.SetAdditionalData(additionalData)
serviceLocation.SetAddress(address)
coordinates := null
serviceLocation.SetCoordinates(&coordinates) 
displayName := "Customer location"
serviceLocation.SetDisplayName(&displayName) 
locationEmailAddress := null
serviceLocation.SetLocationEmailAddress(&locationEmailAddress) 
locationType := null
serviceLocation.SetLocationType(&locationType) 
locationUri := null
serviceLocation.SetLocationUri(&locationUri) 
uniqueId := null
serviceLocation.SetUniqueId(&uniqueId) 
uniqueIdType := null
serviceLocation.SetUniqueIdType(&uniqueIdType) 
additionalData := map[string]interface{}{
	"locationType@odata.type" : "#microsoft.graph.locationType", 
	"uniqueIdType@odata.type" : "#microsoft.graph.locationUniqueIdType", 
}
serviceLocation.SetAdditionalData(additionalData)
requestBody.SetServiceLocation(serviceLocation)
serviceName := "Catered bento"
requestBody.SetServiceName(&serviceName) 
serviceNotes := "Customer requires punctual service."
requestBody.SetServiceNotes(&serviceNotes) 
start := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
start.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-01T12:00:00.0000000+00:00"
start.SetDateTime(&dateTime) 
timeZone := "UTC"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
maximumAttendeesCount := int32(5)
requestBody.SetMaximumAttendeesCount(&maximumAttendeesCount) 
filledAttendeesCount := int32(1)
requestBody.SetFilledAttendeesCount(&filledAttendeesCount) 


bookingCustomerInformationBase := graphmodels.NewBookingCustomerInformationBase()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.bookingCustomerInformation", 
	"customerId" : "7ed53fa5-9ef2-4f2f-975b-27447440bc09", 
	"name" : "Jordan Miller", 
	"emailAddress" : "jordanm@contoso.com", 
	"phone" : "213-555-0199", 
	notes := null
bookingCustomerInformationBase.SetNotes(&notes) 
location := graphmodels.New()
"@odata.type" := "#microsoft.graph.location"
location.Set"@odata.type"(&"@odata.type") 
displayName := "Customer"
location.SetDisplayName(&displayName) 
	locationEmailAddress := null
location.SetLocationEmailAddress(&locationEmailAddress) 
locationUri := ""
location.SetLocationUri(&locationUri) 
	locationType := null
location.SetLocationType(&locationType) 
	uniqueId := null
location.SetUniqueId(&uniqueId) 
	uniqueIdType := null
location.SetUniqueIdType(&uniqueIdType) 
address := graphmodels.New()
"@odata.type" := "#microsoft.graph.physicalAddress"
address.Set"@odata.type"(&"@odata.type") 
type := "home"
address.SetType(&type) 
postOfficeBox := ""
address.SetPostOfficeBox(&postOfficeBox) 
street := ""
address.SetStreet(&street) 
city := ""
address.SetCity(&city) 
state := ""
address.SetState(&state) 
countryOrRegion := ""
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := ""
address.SetPostalCode(&postalCode) 
	location.SetAddress(address)
coordinates := graphmodels.New()
	altitude := null
coordinates.SetAltitude(&altitude) 
	latitude := null
coordinates.SetLatitude(&latitude) 
	longitude := null
coordinates.SetLongitude(&longitude) 
	accuracy := null
coordinates.SetAccuracy(&accuracy) 
	altitudeAccuracy := null
coordinates.SetAltitudeAccuracy(&altitudeAccuracy) 
	location.SetCoordinates(coordinates)
	bookingCustomerInformationBase.SetLocation(location)
	"timeZone" : "America/Chicago", 


 := graphmodels.New()
questionId := "3bc6fde0-4ad3-445d-ab17-0fc15dba0774"
.SetQuestionId(&questionId) 
question := "What is your age"
.SetQuestion(&question) 
answerInputType := "text"
.SetAnswerInputType(&answerInputType) 
answerOptions := []graphmodels.able {

}
.SetAnswerOptions(answerOptions)
isRequired := true
.SetIsRequired(&isRequired) 
answer := "25"
.SetAnswer(&answer) 
selectedOptions := []graphmodels.able {

}
.SetSelectedOptions(selectedOptions)

	customQuestionAnswers := []graphmodels.Objectable {
		,

	}
}
bookingCustomerInformationBase.SetAdditionalData(additionalData)

customers := []graphmodels.BookingCustomerInformationBaseable {
	bookingCustomerInformationBase,

}
requestBody.SetCustomers(customers)
additionalData := map[string]interface{}{
	"invoiceStatus@odata.type" : "#microsoft.graph.bookingInvoiceStatus", 
	"priceType@odata.type" : "#microsoft.graph.bookingPriceType", 
	"reminders@odata.type" : "#Collection(microsoft.graph.bookingReminder)", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.BookingBusinessesById("bookingBusiness-id").Appointments().Post(requestBody)


```