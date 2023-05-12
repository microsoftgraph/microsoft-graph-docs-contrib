---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingAppointment()
customerTimeZone := "America/Chicago"
requestBody.SetCustomerTimeZone(&customerTimeZone) 
smsNotificationsEnabled := true
requestBody.SetSmsNotificationsEnabled(&smsNotificationsEnabled) 
endDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-01T12:30:00.0000000+00:00"
endDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
endDateTime.SetTimeZone(&timeZone) 
requestBody.SetEndDateTime(endDateTime)
isLocationOnline := true
requestBody.SetIsLocationOnline(&isLocationOnline) 
optOutOfCustomerEmail := false
requestBody.SetOptOutOfCustomerEmail(&optOutOfCustomerEmail) 
anonymousJoinWebUrl := null
requestBody.SetAnonymousJoinWebUrl(&anonymousJoinWebUrl) 
postBuffer , err := abstractions.ParseISODuration("PT10M")
requestBody.SetPostBuffer(&postBuffer) 
preBuffer , err := abstractions.ParseISODuration("PT5M")
requestBody.SetPreBuffer(&preBuffer) 
price := float64(10)
requestBody.SetPrice(&price) 
priceType := graphmodels.FIXEDPRICE_BOOKINGPRICETYPE 
requestBody.SetPriceType(&priceType) 


bookingReminder := graphmodels.NewBookingReminder()
message := "This service is tomorrow"
bookingReminder.SetMessage(&message) 
offset , err := abstractions.ParseISODuration("P1D")
bookingReminder.SetOffset(&offset) 
recipients := graphmodels.ALLATTENDEES_BOOKINGREMINDERRECIPIENTS 
bookingReminder.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder.SetAdditionalData(additionalData)
bookingReminder1 := graphmodels.NewBookingReminder()
message := "Please be available to enjoy your lunch service."
bookingReminder1.SetMessage(&message) 
offset , err := abstractions.ParseISODuration("PT1H")
bookingReminder1.SetOffset(&offset) 
recipients := graphmodels.CUSTOMER_BOOKINGREMINDERRECIPIENTS 
bookingReminder1.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.bookingReminderRecipients", 
}
bookingReminder1.SetAdditionalData(additionalData)
bookingReminder2 := graphmodels.NewBookingReminder()
message := "Please check traffic for next cater."
bookingReminder2.SetMessage(&message) 
offset , err := abstractions.ParseISODuration("PT2H")
bookingReminder2.SetOffset(&offset) 
recipients := graphmodels.STAFF_BOOKINGREMINDERRECIPIENTS 
bookingReminder2.SetRecipients(&recipients) 
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.bookingReminderRecipients", 
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
address := graphmodels.NewPhysicalAddress()
city := "Buffalo"
address.SetCity(&city) 
countryOrRegion := "USA"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "98052"
address.SetPostalCode(&postalCode) 
state := "NY"
address.SetState(&state) 
street := "123 First Avenue"
address.SetStreet(&street) 
additionalData := map[string]interface{}{
	postOfficeBox := null
address.SetPostOfficeBox(&postOfficeBox) 
	"odataType" : "#microsoft.graph.physicalAddressType", 
	type := null
address.SetType(&type) 
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
	"odataType" : "#microsoft.graph.locationType", 
	"odataType" : "#microsoft.graph.locationUniqueIdType", 
}
serviceLocation.SetAdditionalData(additionalData)
requestBody.SetServiceLocation(serviceLocation)
serviceName := "Catered bento"
requestBody.SetServiceName(&serviceName) 
serviceNotes := "Customer requires punctual service."
requestBody.SetServiceNotes(&serviceNotes) 
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-01T12:00:00.0000000+00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)
maximumAttendeesCount := int32(5)
requestBody.SetMaximumAttendeesCount(&maximumAttendeesCount) 
filledAttendeesCount := int32(1)
requestBody.SetFilledAttendeesCount(&filledAttendeesCount) 


bookingCustomerInformationBase := graphmodels.NewBookingCustomerInformationBase()
additionalData := map[string]interface{}{
	"customerId" : "7ed53fa5-9ef2-4f2f-975b-27447440bc09", 
	"name" : "Jordan Miller", 
	"emailAddress" : "jordanm@contoso.com", 
	"phone" : "213-555-0199", 
	notes := null
bookingCustomerInformationBase.SetNotes(&notes) 
location := graphmodels.New()
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
question := "What is your age?"
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
	"odataType" : "#microsoft.graph.bookingPriceType", 
	"odataType" : "#Collection(microsoft.graph.bookingReminder)", 
	"odataType" : "#Collection(microsoft.graph.bookingCustomerInformation)", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Appointments().Post(context.Background(), requestBody, nil)


```