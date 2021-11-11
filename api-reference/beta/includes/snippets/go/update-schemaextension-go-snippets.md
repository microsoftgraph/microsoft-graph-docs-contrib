---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSchemaExtension()
owner := "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa"
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
	msgraphsdk.NewExtensionSchemaProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "courseSupervisors",
		"type": "String",
	}
}
options := &msgraphsdk.SchemaExtensionRequestBuilderPatchOptions{
	Body: requestBody,
}
schemaExtensionId := "schemaExtension-id"
graphClient.SchemaExtensionsById(&schemaExtensionId).Patch(options)


```