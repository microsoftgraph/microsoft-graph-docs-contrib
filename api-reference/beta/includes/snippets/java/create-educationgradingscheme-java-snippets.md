---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationGradingScheme educationGradingScheme = new EducationGradingScheme();
educationGradingScheme.setDisplayName("PassFailScheme");
LinkedList<EducationGradingSchemeGrade> grades = new LinkedList<EducationGradingSchemeGrade>();
EducationGradingSchemeGrade educationGradingSchemeGrade = new EducationGradingSchemeGrade();
educationGradingSchemeGrade.setDisplayName("Pass");
educationGradingSchemeGrade.setMinPercentage(70f);
educationGradingSchemeGrade.setDefaultPercentage(90f);
grades.add(educationGradingSchemeGrade);
EducationGradingSchemeGrade educationGradingSchemeGrade1 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade1.setDisplayName("Fail");
educationGradingSchemeGrade1.setMinPercentage(0f);
educationGradingSchemeGrade1.setDefaultPercentage(50f);
grades.add(educationGradingSchemeGrade1);
educationGradingScheme.setGrades(grades);
EducationGradingScheme result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().gradingSchemes().post(educationGradingScheme);


```