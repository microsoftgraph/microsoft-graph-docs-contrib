---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewContact()
homeAddress := graphmodels.NewPhysicalAddress()
street := "123 Some street"
homeAddress.SetStreet(&street) 
city := "Seattle"
homeAddress.SetCity(&city) 
state := "WA"
homeAddress.SetState(&state) 
postalCode := "98121"
homeAddress.SetPostalCode(&postalCode) 
requestBody.SetHomeAddress(homeAddress)
birthday , err := time.Parse(time.RFC3339, "1974-07-22")
requestBody.SetBirthday(&birthday) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contacts, err := graphClient.Me().Contacts().ByContactId("contact-id").Patch(context.Background(), requestBody, nil)


```