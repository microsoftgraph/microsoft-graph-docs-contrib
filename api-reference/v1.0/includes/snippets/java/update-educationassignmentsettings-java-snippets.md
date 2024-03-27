---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentSettings educationAssignmentSettings = new EducationAssignmentSettings();
educationAssignmentSettings.setSubmissionAnimationDisabled(true);
EducationAssignmentSettings result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().patch(educationAssignmentSettings);


```