---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSchemaExtension()
owner := "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa"
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
extensionSchemaProperty3 := graphmodels.NewExtensionSchemaProperty()
additionalData := map[string]interface{}{
	"name" : "courseSupervisors", 
	"type" : "String", 
}
extensionSchemaProperty3.SetAdditionalData(additionalData)

properties := []graphmodels.ExtensionSchemaPropertyable {
	extensionSchemaProperty,
	extensionSchemaProperty1,
	extensionSchemaProperty2,
	extensionSchemaProperty3,

}
requestBody.SetProperties(properties)

graphClient.SchemaExtensionsById("schemaExtension-id").Patch(requestBody)


```