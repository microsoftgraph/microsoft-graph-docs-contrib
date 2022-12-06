---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

educationSchoolId := "educationSchool-id"
educationClassId := "educationClass-id"
graphClient.Education().SchoolsById(&educationSchoolId).ClassesById(&educationClassId).Delete()


```