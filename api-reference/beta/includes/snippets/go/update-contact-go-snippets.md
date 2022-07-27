---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContact()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"type" : "personal", 
	"name" : "Pavel Bansky", 
	"address" : "pavelb@adatum.onmicrosoft.com", 
}
.SetAdditionalData(additionalData)
 := graphmodels.New()
additionalData := map[string]interface{}{
	"address" : "pavelb@fabrikam.onmicrosoft.com", 
	"name" : "Pavel Bansky", 
	"type" : "other", 
	"otherLabel" : "Volunteer work", 
}
.SetAdditionalData(additionalData)

emailAddresses := []graphmodels.Objectable {
	,
	,

}
requestBody.SetEmailAddresses(emailAddresses)

graphClient.Me().ContactsById("contact-id").Patch(requestBody)


```