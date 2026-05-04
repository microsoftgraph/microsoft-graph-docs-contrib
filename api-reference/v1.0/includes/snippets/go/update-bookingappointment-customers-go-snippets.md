---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewBookingAppointment()


bookingCustomerInformationBase := graphmodels.NewBookingCustomerInformation()
customerId := "cd56bb19-c348-42c6-af5c-09818c87fb8c"
bookingCustomerInformationBase.SetCustomerId(&customerId) 
name := "John Doe"
bookingCustomerInformationBase.SetName(&name) 
emailAddress := "john.doe@example.com"
bookingCustomerInformationBase.SetEmailAddress(&emailAddress) 
phone := "313-555-5555"
bookingCustomerInformationBase.SetPhone(&phone) 
bookingCustomerInformationBase1 := graphmodels.NewBookingCustomerInformation()
customerId := "72f148fa-9a86-4c59-b277-f5089d9ea0e7"
bookingCustomerInformationBase1.SetCustomerId(&customerId) 
name := "Jane Smith"
bookingCustomerInformationBase1.SetName(&name) 
emailAddress := "jane.smith@example.com"
bookingCustomerInformationBase1.SetEmailAddress(&emailAddress) 
phone := "248-555-5678"
bookingCustomerInformationBase1.SetPhone(&phone) 

customers := []graphmodels.BookingCustomerInformationBaseable {
	bookingCustomerInformationBase,
	bookingCustomerInformationBase1,
}
requestBody.SetCustomers(customers)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appointments, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Appointments().ByBookingAppointmentId("bookingAppointment-id").Patch(context.Background(), requestBody, nil)


```