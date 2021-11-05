---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
key := "Base64-encoded-pfx-content"
requestBody.SetKey(&key)
password := "password-value"
requestBody.SetPassword(&password)
options := &msgraphsdk.UploadPkcs12RequestBuilderPostOptions{
	Body: requestBody,
}
trustFrameworkKeySetId := "trustFrameworkKeySet-id"
result, err := graphClient.TrustFramework().KeySetsById(&trustFrameworkKeySetId).UploadPkcs12().Post(options);


```