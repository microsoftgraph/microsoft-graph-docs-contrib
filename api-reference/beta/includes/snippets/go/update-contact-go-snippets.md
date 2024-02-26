---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContact()


typedEmailAddress := graphmodels.NewTypedEmailAddress()
type := graphmodels.PERSONAL_EMAILTYPE 
typedEmailAddress.SetType(&type) 
name := "Pavel Bansky"
typedEmailAddress.SetName(&name) 
address := "pavelb@contoso.com"
typedEmailAddress.SetAddress(&address) 
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

contacts, err := graphClient.Me().Contacts().ByContactId("contact-id").Patch(context.Background(), requestBody, nil)


```