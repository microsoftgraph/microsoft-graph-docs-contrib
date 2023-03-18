---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewDelegatedAdminRelationshipRequest()
action := graphmodels.LOCKFORAPPROVAL_DELEGATEDADMINRELATIONSHIPREQUESTACTION 
requestBody.SetAction(&action) 

result, err := graphClient.TenantRelationships().DelegatedAdminRelationshipsById("delegatedAdminRelationship-id").Requests().Post(context.Background(), requestBody, nil)


```