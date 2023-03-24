---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBrandingDeleteRequestBody()
additionalData := map[string]interface{}{
	"id" : "0", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.OrganizationById("organization-id").Branding().Delete(context.Background(), requestBody, nil)


```