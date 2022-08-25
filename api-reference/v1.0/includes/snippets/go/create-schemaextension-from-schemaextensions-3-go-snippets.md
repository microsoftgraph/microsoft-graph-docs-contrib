---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSchemaExtension()
id := "courses"
requestBody.SetId(&id) 
description := "Graph Learn training courses extensions"
requestBody.SetDescription(&description) 
targetTypes := []string {
	"Group",

}
requestBody.SetTargetTypes(targetTypes)
owner := "50897f70-a455-4adf-87bc-4cf17091d5ac"
requestBody.SetOwner(&owner) 


extensionSchemaProperty := graphmodels.NewExtensionSchemaProperty()
additionalData := map[string]interface{}{
	"name" : "courseId", 
	"type" : "Integer", 
}
extensionSchemaProperty.SetAdditionalData(additionalData)
extensionSchemaProperty1 := graphmodels.NewExtensionSchemaProperty()
additionalData := map[string]interface{}{
	"name" : "courseName", 
	"type" : "String", 
}
extensionSchemaProperty1.SetAdditionalData(additionalData)
extensionSchemaProperty2 := graphmodels.NewExtensionSchemaProperty()
additionalData := map[string]interface{}{
	"name" : "courseType", 
	"type" : "String", 
}
extensionSchemaProperty2.SetAdditionalData(additionalData)

properties := []graphmodels.ExtensionSchemaPropertyable {
	extensionSchemaProperty,
	extensionSchemaProperty1,
	extensionSchemaProperty2,

}
requestBody.SetProperties(properties)

result, err := graphClient.SchemaExtensions().Post(requestBody)


```