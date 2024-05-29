---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationRubric educationRubric = new EducationRubric();
educationRubric.setDisplayName("Example Credit Rubric after display name patch");
EducationRubric result = graphClient.education().me().rubrics().byEducationRubricId("{educationRubric-id}").patch(educationRubric);


```