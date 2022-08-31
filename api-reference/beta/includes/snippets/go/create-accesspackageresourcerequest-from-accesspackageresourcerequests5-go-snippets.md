---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageResourceRequest()
catalogId := "beedadfe-01d5-4025-910b-84abb9369997"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminRemove"
requestBody.SetRequestType(&requestType) 
accessPackageResource := graphmodels.NewaccessPackageResource()
id := "354078e5-dbce-4894-8af4-0ab274d41662"
accessPackageResource.SetId(&id) 
requestBody.SetAccessPackageResource(accessPackageResource)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(requestBody)


```