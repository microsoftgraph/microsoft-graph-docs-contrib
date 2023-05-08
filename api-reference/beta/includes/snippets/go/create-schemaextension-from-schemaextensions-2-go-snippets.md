---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSchemaExtension()
id := "courses"
requestBody.SetId(&id) 
description := "Graph Learn training courses extensions"
requestBody.SetDescription(&description) 
targetTypes := []string {
	"Group",

}
requestBody.SetTargetTypes(targetTypes)


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

properties := []graphmodels.ExtensionSchemaPropertyable {
	extensionSchemaProperty,
	extensionSchemaProperty1,
	extensionSchemaProperty2,

}
requestBody.SetProperties(properties)

result, err := graphClient.SchemaExtensions().Post(context.Background(), requestBody, nil)


```