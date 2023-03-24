---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.ApplicationsById("application-id").ExtensionPropertiesById("extensionProperty-id").Delete(context.Background(), nil)


```