---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonCertification()
certificationId := "KB-1235466333663322"
requestBody.SetCertificationId(&certificationId) 
description := "Blackbelt in Marketing - Brand Management"
requestBody.SetDescription(&description) 
displayName := "Marketing Blackbelt - Brand Management"
requestBody.SetDisplayName(&displayName) 
thumbnailUrl := "https://iame.io/dfhdfdfd334.jpg"
requestBody.SetThumbnailUrl(&thumbnailUrl) 
webUrl := "https://www.iame.io/blackbelt"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Profile().Certifications().Post(requestBody)


```