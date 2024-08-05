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

requestBody := graphmodels.NewContact()
givenName := "Pavel"
requestBody.SetGivenName(&givenName) 
surname := "Bansky"
requestBody.SetSurname(&surname) 


emailAddress := graphmodels.NewEmailAddress()
address := "pavelb@contoso.com"
emailAddress.SetAddress(&address) 
name := "Pavel Bansky"
emailAddress.SetName(&name) 

emailAddresses := []graphmodels.EmailAddressable {
	emailAddress,
}
requestBody.SetEmailAddresses(emailAddresses)
businessPhones := []string {
	"+1 732 555 0102",
}
requestBody.SetBusinessPhones(businessPhones)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contacts, err := graphClient.Me().Contacts().Post(context.Background(), requestBody, nil)


```