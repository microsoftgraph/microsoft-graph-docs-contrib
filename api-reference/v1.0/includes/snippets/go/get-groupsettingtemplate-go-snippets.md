---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

groupSettingTemplateId := "groupSettingTemplate-id"
result, err := graphClient.GroupSettingTemplatesById(&groupSettingTemplateId).Get(options)


```