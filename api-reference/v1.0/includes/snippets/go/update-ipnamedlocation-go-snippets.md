---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewNamedLocation()
"@odata.type" := "#microsoft.graph.ipNamedLocation"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "Untrusted named location with only IPv4 address"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	isTrusted := false
requestBody.SetIsTrusted(&isTrusted) 


 := graphmodels.New()
"@odata.type" := "#microsoft.graph.iPv4CidrRange"
.Set"@odata.type"(&"@odata.type") 
cidrAddress := "6.5.4.3/18"
.SetCidrAddress(&cidrAddress) 

	ipRanges := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().ConditionalAccess().NamedLocationsById("namedLocation-id").Patch(requestBody)


```