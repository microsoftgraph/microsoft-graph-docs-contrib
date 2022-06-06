---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDisplayNameRequestBody()
displayName := "Azure AD SAML Toolkit"
requestBody.SetDisplayName(&displayName)
applicationTemplateId := "applicationTemplate-id"
result, err := graphClient.ApplicationTemplatesById(&applicationTemplateId).Instantiate(applicationTemplate-id).Post(requestBody)


```