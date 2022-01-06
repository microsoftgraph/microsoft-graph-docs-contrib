---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAttributeSet()
id := "Engineering"
requestBody.SetId(&id)
description := "Attributes for engineering team"
requestBody.SetDescription(&description)
maxAttributesPerSet := int32(25)
requestBody.SetMaxAttributesPerSet(&maxAttributesPerSet)
options := &msgraphsdk.AttributeSetsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Directory().AttributeSets().Post(options)


```