---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentitygovernance.NewBatchApplyCustomDataProvidedResourceDecisionsPostRequestBody()
applyResult := graphmodels.APPLIEDSUCCESSFULLY_ACCESSREVIEWINSTANCEDECISIONITEMAPPLYRESULT 
requestBody.SetApplyResult(&applyResult) 
applyDescription := "Access was removed from production application: GitHub-app."
requestBody.SetApplyDescription(&applyDescription) 
customDataProvidedResourceId := "5c728447-be5c-4565-b4d3-cb248b609891"
requestBody.SetCustomDataProvidedResourceId(&customDataProvidedResourceId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().AccessReviews().Definitions().ByAccessReviewScheduleDefinitionId("accessReviewScheduleDefinition-id").Instances().ByAccessReviewInstanceId("accessReviewInstance-id").BatchApplyCustomDataProvidedResourceDecisions().Post(context.Background(), requestBody, nil)


```