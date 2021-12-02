---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
skuId := "6fd2c87f-b296-42f0-b197-1e91e994b900"
requestBody.SetSkuId(&skuId)
servicePlanId := "a23b959c-7ce8-4e57-9140-b90eb88a9e97"
requestBody.SetServicePlanId(&servicePlanId)
options := &msgraphsdk.ActivateServiceRequestBuilderPostOptions{
	Body: requestBody,
}
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).ActivateService().Post(options)


```