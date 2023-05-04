---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
address := "pavelb@adatum.onmicrosoft.com"
typedEmailAddress.SetAddress(&address) 
typedEmailAddress1 := graphmodels.NewTypedEmailAddress()
address := "pavelb@fabrikam.onmicrosoft.com"
typedEmailAddress1.SetAddress(&address) 
name := "Pavel Bansky"
typedEmailAddress1.SetName(&name) 
type := graphmodels.OTHER_EMAILTYPE 
typedEmailAddress1.SetType(&type) 
otherLabel := "Volunteer work"
typedEmailAddress1.SetOtherLabel(&otherLabel) 

emailAddresses := []graphmodels.Objectable {
	typedEmailAddress,
	typedEmailAddress1,

}
requestBody.SetEmailAddresses(emailAddresses)

result, err := graphClient.Me().Contacts().ByContactId("contact-id").Patch(context.Background(), requestBody, nil)


```