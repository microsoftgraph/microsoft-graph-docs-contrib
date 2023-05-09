---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSchemaExtension()
owner := "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa"
requestBody.SetOwner(&owner) 


extensionSchemaProperty := graphmodels.NewExtensionSchemaProperty()
name := "courseId"
extensionSchemaProperty.SetName(&name) 
type := "Integer"
extensionSchemaProperty.SetType(&type) 
extensionSchemaProperty1 := graphmodels.NewExtensionSchemaProperty()
name := "courseName"
extensionSchemaProperty1.SetName(&name) 
type := "String"
extensionSchemaProperty1.SetType(&type) 
extensionSchemaProperty2 := graphmodels.NewExtensionSchemaProperty()
name := "courseType"
extensionSchemaProperty2.SetName(&name) 
type := "String"
extensionSchemaProperty2.SetType(&type) 
extensionSchemaProperty3 := graphmodels.NewExtensionSchemaProperty()
name := "courseSupervisors"
extensionSchemaProperty3.SetName(&name) 
type := "String"
extensionSchemaProperty3.SetType(&type) 

properties := []graphmodels.ExtensionSchemaPropertyable {
	extensionSchemaProperty,
	extensionSchemaProperty1,
	extensionSchemaProperty2,
	extensionSchemaProperty3,

}
requestBody.SetProperties(properties)

result, err := graphClient.SchemaExtensions().BySchemaExtensionId("schemaExtension-id").Patch(context.Background(), requestBody, nil)


```