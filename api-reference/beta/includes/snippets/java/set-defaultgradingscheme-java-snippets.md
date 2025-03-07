---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationGradingScheme educationGradingScheme = new EducationGradingScheme();
educationGradingScheme.setDisplayName("New name 02");
LinkedList<EducationGradingSchemeGrade> grades = new LinkedList<EducationGradingSchemeGrade>();
EducationGradingSchemeGrade educationGradingSchemeGrade = new EducationGradingSchemeGrade();
educationGradingSchemeGrade.setDisplayName("Only grade");
educationGradingSchemeGrade.setMinPercentage(0f);
grades.add(educationGradingSchemeGrade);
educationGradingScheme.setGrades(grades);
EducationGradingScheme result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().gradingSchemes().post(educationGradingScheme);


```