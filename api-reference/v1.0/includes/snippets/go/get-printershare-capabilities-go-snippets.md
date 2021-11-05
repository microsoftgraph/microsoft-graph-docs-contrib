---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.PrinterShareRequestBuilderGetQueryParameters{
	Select: "id,displayName,capabilities",
}
options := &msgraphsdk.PrinterShareRequestBuilderGetOptions{
	Q: requestParameters,
}
printerShareId := "printerShare-id"
result, err := graphClient.Print().SharesById(&printerShareId).Get(options);


```