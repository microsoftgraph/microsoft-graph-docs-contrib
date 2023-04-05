---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContact()
givenName := "Pavel"
requestBody.SetGivenName(&givenName) 
surname := "Bansky"
requestBody.SetSurname(&surname) 


emailAddress := graphmodels.NewEmailAddress()
address := "pavelb@fabrikam.onmicrosoft.com"
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

result, err := graphClient.Me().Contacts().Post(context.Background(), requestBody, nil)


```