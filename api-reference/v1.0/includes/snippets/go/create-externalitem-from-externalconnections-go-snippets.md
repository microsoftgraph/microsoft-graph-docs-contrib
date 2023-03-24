---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewItem()
additionalData := map[string]interface{}{


 := graphmodels.New()
type := "user"
.SetType(&type) 
value := "e811976d-83df-4cbd-8b9b-5215b18aa874"
.SetValue(&value) 
accessType := "grant"
.SetAccessType(&accessType) 
 := graphmodels.New()
type := "externalGroup"
.SetType(&type) 
value := "14m1b9c38qe647f6a"
.SetValue(&value) 
accessType := "deny"
.SetAccessType(&accessType) 

	acl := []graphmodels.Objectable {
		,
		,

	}
properties := graphmodels.New()
title := "Error in the payment gateway"
properties.SetTitle(&title) 
priority := int32(1)
properties.SetPriority(&priority) 
assignee := "john@contoso.com"
properties.SetAssignee(&assignee) 
	requestBody.SetProperties(properties)
content := graphmodels.New()
value := "Error in payment gateway..."
content.SetValue(&value) 
type := "text"
content.SetType(&type) 
	requestBody.SetContent(content)
}
requestBody.SetAdditionalData(additionalData)

graphClient.External().ConnectionsById("externalConnection-id").ItemsById("externalItem-id").Put(context.Background(), requestBody, nil)


```