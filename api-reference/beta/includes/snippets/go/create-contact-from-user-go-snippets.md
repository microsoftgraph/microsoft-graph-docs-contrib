---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewContact()
givenName := "Pavel"
requestBody.SetGivenName(&givenName) 
surname := "Bansky"
requestBody.SetSurname(&surname) 


typedEmailAddress := graphmodels.NewTypedEmailAddress()
address := "pavelb@contoso.com"
typedEmailAddress.SetAddress(&address) 
name := "Pavel Bansky"
typedEmailAddress.SetName(&name) 
type := graphmodels.PERSONAL_EMAILTYPE 
typedEmailAddress.SetType(&type) 
typedEmailAddress1 := graphmodels.NewTypedEmailAddress()
address := "pavelb@contoso.com"
typedEmailAddress1.SetAddress(&address) 
name := "Pavel Bansky"
typedEmailAddress1.SetName(&name) 
type := graphmodels.OTHER_EMAILTYPE 
typedEmailAddress1.SetType(&type) 
otherLabel := "Volunteer work"
typedEmailAddress1.SetOtherLabel(&otherLabel) 

emailAddresses := []graphmodels.TypedEmailAddressable {
	typedEmailAddress,
	typedEmailAddress1,
}
requestBody.SetEmailAddresses(emailAddresses)


phone := graphmodels.NewPhone()
number := "+1 732 555 0102"
phone.SetNumber(&number) 
type := graphmodels.BUSINESS_PHONETYPE 
phone.SetType(&type) 

phones := []graphmodels.Phoneable {
	phone,
}
requestBody.SetPhones(phones)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contacts, err := graphClient.Me().Contacts().Post(context.Background(), requestBody, nil)


```