---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationRubric()
displayName := "Example Credit Rubric"
requestBody.SetDisplayName(&displayName)
description := msgraphsdk.NewEducationItemBody()
requestBody.SetDescription(description)
content := "This is an example of a credit rubric (no points)"
description.SetContent(&content)
contentType := "text"
description.SetContentType(&contentType)
requestBody.SetLevels( []RubricLevel {
	msgraphsdk.NewRubricLevel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Good",
	}
	msgraphsdk.NewRubricLevel(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Poor",
	}
}
requestBody.SetQualities( []RubricQuality {
	msgraphsdk.NewRubricQuality(),
	SetAdditionalData(map[string]interface{}{
		"criteria":  []Object {
		}
	}
	msgraphsdk.NewRubricQuality(),
	SetAdditionalData(map[string]interface{}{
		"criteria":  []Object {
		}
	}
}
options := &msgraphsdk.RubricsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Education().Me().Rubrics().Post(options)


```