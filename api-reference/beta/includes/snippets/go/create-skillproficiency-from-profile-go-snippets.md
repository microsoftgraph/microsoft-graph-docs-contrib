---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewSkillProficiency()
categories := []string {
	"Professional",
}
requestBody.SetCategories(categories)
allowedAudiences := graphmodels.ORGANIZATION_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
displayName := "API Design"
requestBody.SetDisplayName(&displayName) 
proficiency := graphmodels.GENERALPROFESSIONAL_SKILLPROFICIENCYLEVEL 
requestBody.SetProficiency(&proficiency) 
collaborationTags := []string {
	"ableToMentor",
}
requestBody.SetCollaborationTags(collaborationTags)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
skills, err := graphClient.Me().Profile().Skills().Post(context.Background(), requestBody, nil)


```