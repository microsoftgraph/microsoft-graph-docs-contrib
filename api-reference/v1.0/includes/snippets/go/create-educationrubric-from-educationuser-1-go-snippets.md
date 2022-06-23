---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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
displayName := "Good"
	SetDisplayName(&displayName)
description := msgraphsdk.NewEducationItemBody()
	SetDescription(description)
content := ""
	description.SetContent(&content)
contentType := "text"
	description.SetContentType(&contentType)
	msgraphsdk.NewRubricLevel(),
displayName := "Poor"
	SetDisplayName(&displayName)
description := msgraphsdk.NewEducationItemBody()
	SetDescription(description)
content := ""
	description.SetContent(&content)
contentType := "text"
	description.SetContentType(&contentType)
}
requestBody.SetQualities( []RubricQuality {
	msgraphsdk.NewRubricQuality(),
description := msgraphsdk.NewEducationItemBody()
	SetDescription(description)
content := "Argument"
	description.SetContent(&content)
contentType := "text"
	description.SetContentType(&contentType)
	SetCriteria( []RubricCriterion {
		msgraphsdk.NewRubricCriterion(),
description := msgraphsdk.NewEducationItemBody()
		SetDescription(description)
content := "The essay's argument is persuasive."
		description.SetContent(&content)
contentType := "text"
		description.SetContentType(&contentType)
		msgraphsdk.NewRubricCriterion(),
description := msgraphsdk.NewEducationItemBody()
		SetDescription(description)
content := "The essay's argument does not make sense."
		description.SetContent(&content)
contentType := "text"
		description.SetContentType(&contentType)
	}
	msgraphsdk.NewRubricQuality(),
description := msgraphsdk.NewEducationItemBody()
	SetDescription(description)
content := "Spelling and Grammar"
	description.SetContent(&content)
contentType := "text"
	description.SetContentType(&contentType)
	SetCriteria( []RubricCriterion {
		msgraphsdk.NewRubricCriterion(),
description := msgraphsdk.NewEducationItemBody()
		SetDescription(description)
content := "The essay uses proper spelling and grammar with few or no errors."
		description.SetContent(&content)
contentType := "text"
		description.SetContentType(&contentType)
		msgraphsdk.NewRubricCriterion(),
description := msgraphsdk.NewEducationItemBody()
		SetDescription(description)
content := "The essay has numerous errors in spelling and/or grammar."
		description.SetContent(&content)
contentType := "text"
		description.SetContentType(&contentType)
	}
}
result, err := graphClient.Education().Me().Rubrics().Post(requestBody)


```