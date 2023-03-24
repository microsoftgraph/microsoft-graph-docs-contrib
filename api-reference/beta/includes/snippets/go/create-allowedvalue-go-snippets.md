---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAllowedValue()
id := "Alpine"
requestBody.SetId(&id) 
isActive := true
requestBody.SetIsActive(&isActive) 

result, err := graphClient.Directory().CustomSecurityAttributeDefinitionsById("customSecurityAttributeDefinition-id").AllowedValues().Post(context.Background(), requestBody, nil)


```