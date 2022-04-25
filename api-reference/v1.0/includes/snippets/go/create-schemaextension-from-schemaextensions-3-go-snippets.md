---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSchemaExtension()
id := "courses"
requestBody.SetId(&id)
description := "Graph Learn training courses extensions"
requestBody.SetDescription(&description)
requestBody.SetTargetTypes( []String {
	"Group",
}
owner := "50897f70-a455-4adf-87bc-4cf17091d5ac"
requestBody.SetOwner(&owner)
requestBody.SetProperties( []ExtensionSchemaProperty {
	msgraphsdk.NewExtensionSchemaProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "courseId",
		"type": "Integer",
	}
	msgraphsdk.NewExtensionSchemaProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "courseName",
		"type": "String",
	}
	msgraphsdk.NewExtensionSchemaProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "courseType",
		"type": "String",
	}
}
options := &msgraphsdk.SchemaExtensionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.SchemaExtensions().Post(options)


```