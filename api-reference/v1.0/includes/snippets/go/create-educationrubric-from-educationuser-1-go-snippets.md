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


requestBody := graphmodels.NewEducationRubric()
displayName := "Example Credit Rubric"
requestBody.SetDisplayName(&displayName) 
description := graphmodels.NewEducationItemBody()
content := "This is an example of a credit rubric (no points)"
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
requestBody.SetDescription(description)


rubricLevel := graphmodels.NewRubricLevel()
displayName := "Good"
rubricLevel.SetDisplayName(&displayName) 
description := graphmodels.NewEducationItemBody()
content := ""
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricLevel.SetDescription(description)
rubricLevel1 := graphmodels.NewRubricLevel()
displayName := "Poor"
rubricLevel1.SetDisplayName(&displayName) 
description := graphmodels.NewEducationItemBody()
content := ""
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricLevel1.SetDescription(description)

levels := []graphmodels.RubricLevelable {
	rubricLevel,
	rubricLevel1,

}
requestBody.SetLevels(levels)


rubricQuality := graphmodels.NewRubricQuality()
description := graphmodels.NewEducationItemBody()
content := "Argument"
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricQuality.SetDescription(description)


rubricCriterion := graphmodels.NewRubricCriterion()
description := graphmodels.NewEducationItemBody()
content := "The essay's argument is persuasive."
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricCriterion.SetDescription(description)
rubricCriterion1 := graphmodels.NewRubricCriterion()
description := graphmodels.NewEducationItemBody()
content := "The essay's argument does not make sense."
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricCriterion1.SetDescription(description)

criteria := []graphmodels.RubricCriterionable {
	rubricCriterion,
	rubricCriterion1,

}
rubricQuality.SetCriteria(criteria)
rubricQuality1 := graphmodels.NewRubricQuality()
description := graphmodels.NewEducationItemBody()
content := "Spelling and Grammar"
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricQuality1.SetDescription(description)


rubricCriterion := graphmodels.NewRubricCriterion()
description := graphmodels.NewEducationItemBody()
content := "The essay uses proper spelling and grammar with few or no errors."
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricCriterion.SetDescription(description)
rubricCriterion1 := graphmodels.NewRubricCriterion()
description := graphmodels.NewEducationItemBody()
content := "The essay has numerous errors in spelling and/or grammar."
description.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
description.SetContentType(&contentType) 
rubricCriterion1.SetDescription(description)

criteria := []graphmodels.RubricCriterionable {
	rubricCriterion,
	rubricCriterion1,

}
rubricQuality1.SetCriteria(criteria)

qualities := []graphmodels.RubricQualityable {
	rubricQuality,
	rubricQuality1,

}
requestBody.SetQualities(qualities)

result, err := graphClient.Education().Me().Rubrics().Post(context.Background(), requestBody, nil)


```