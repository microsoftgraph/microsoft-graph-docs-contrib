---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"OData-Version": "4.01",
}
configuration := &graphconfig.CustomSecurityAttributeDefinitionRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCustomSecurityAttributeDefinition()
additionalData := map[string]interface{}{


 := graphmodels.New()
id := "Baker"
.SetId(&id) 
isActive := false
.SetIsActive(&isActive) 
 := graphmodels.New()
id := "Skagit"
.SetId(&id) 
isActive := true
.SetIsActive(&isActive) 

	allowedValues@delta := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Directory().CustomSecurityAttributeDefinitionsById("customSecurityAttributeDefinition-id").Patch(context.Background(), requestBody, configuration)


```