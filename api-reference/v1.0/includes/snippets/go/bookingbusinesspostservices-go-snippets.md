---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewBookingService()
defaultDuration , err := abstractions.ParseISODuration("PT1H30M")
requestBody.SetDefaultDuration(&defaultDuration) 
defaultLocation := graphmodels.NewLocation()
address := graphmodels.NewPhysicalAddress()
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
message := "Please be reminded that this service is tomorrow."
bookingReminder.SetMessage(&message) 
offset , err := abstractions.ParseISODuration("P1D")
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
isCustomerAllowedToManageBooking := true
requestBody.SetIsCustomerAllowedToManageBooking(&isCustomerAllowedToManageBooking) 
languageTag := "en-US"
requestBody.SetLanguageTag(&languageTag) 
isHiddenFromCustomers := false
requestBody.SetIsHiddenFromCustomers(&isHiddenFromCustomers) 
notes := "Home-cooked special"
requestBody.SetNotes(&notes) 
postBuffer , err := abstractions.ParseISODuration("PT10M")
requestBody.SetPostBuffer(&postBuffer) 
preBuffer , err := abstractions.ParseISODuration("PT5M")
requestBody.SetPreBuffer(&preBuffer) 
schedulingPolicy := graphmodels.NewBookingSchedulingPolicy()
allowStaffSelection := true
schedulingPolicy.SetAllowStaffSelection(&allowStaffSelection) 
maximumAdvance , err := abstractions.ParseISODuration("P10D")
schedulingPolicy.SetMaximumAdvance(&maximumAdvance) 
minimumLeadTime , err := abstractions.ParseISODuration("PT10H")
schedulingPolicy.SetMinimumLeadTime(&minimumLeadTime) 
sendConfirmationsToOwner := true
schedulingPolicy.SetSendConfirmationsToOwner(&sendConfirmationsToOwner) 
timeSlotInterval , err := abstractions.ParseISODuration("PT1H")
schedulingPolicy.SetTimeSlotInterval(&timeSlotInterval) 
requestBody.SetSchedulingPolicy(schedulingPolicy)
staffMemberIds := []string {
	"d90d1e8c-5cfe-48cf-a2d5-966267375b6a",
	"2f5f8794-0b29-45b5-b56a-2eb5ff7aa880",
}
requestBody.SetStaffMemberIds(staffMemberIds)
isAnonymousJoinEnabled := false
requestBody.SetIsAnonymousJoinEnabled(&isAnonymousJoinEnabled) 
additionalData := map[string]interface{}{
	"defaultPriceType@odata.type" : "#microsoft.graph.bookingPriceType", 
	"defaultReminders@odata.type" : "#Collection(microsoft.graph.bookingReminder)", 
	"staffMemberIds@odata.type" : "#Collection(String)", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
services, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Services().Post(context.Background(), requestBody, nil)


```