---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentSettings educationAssignmentSettings = new EducationAssignmentSettings();
LinkedList<EducationGradingScheme> gradingSchemes = new LinkedList<EducationGradingScheme>();
EducationGradingScheme educationGradingScheme = new EducationGradingScheme();
educationGradingScheme.setDisplayName("Pass/fail");
LinkedList<EducationGradingSchemeGrade> grades = new LinkedList<EducationGradingSchemeGrade>();
EducationGradingSchemeGrade educationGradingSchemeGrade = new EducationGradingSchemeGrade();
educationGradingSchemeGrade.setDisplayName("Pass");
educationGradingSchemeGrade.setMinPercentage(60f);
educationGradingSchemeGrade.setDefaultPercentage(100f);
grades.add(educationGradingSchemeGrade);
EducationGradingSchemeGrade educationGradingSchemeGrade1 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade1.setDisplayName("Fail");
educationGradingSchemeGrade1.setMinPercentage(0f);
educationGradingSchemeGrade1.setDefaultPercentage(0f);
grades.add(educationGradingSchemeGrade1);
educationGradingScheme.setGrades(grades);
gradingSchemes.add(educationGradingScheme);
EducationGradingScheme educationGradingScheme1 = new EducationGradingScheme();
educationGradingScheme1.setDisplayName("Letters");
LinkedList<EducationGradingSchemeGrade> grades1 = new LinkedList<EducationGradingSchemeGrade>();
EducationGradingSchemeGrade educationGradingSchemeGrade2 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade2.setDisplayName("A");
educationGradingSchemeGrade2.setMinPercentage(90f);
grades1.add(educationGradingSchemeGrade2);
EducationGradingSchemeGrade educationGradingSchemeGrade3 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade3.setDisplayName("B");
educationGradingSchemeGrade3.setMinPercentage(80f);
grades1.add(educationGradingSchemeGrade3);
EducationGradingSchemeGrade educationGradingSchemeGrade4 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade4.setDisplayName("C");
educationGradingSchemeGrade4.setMinPercentage(70f);
grades1.add(educationGradingSchemeGrade4);
EducationGradingSchemeGrade educationGradingSchemeGrade5 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade5.setDisplayName("D");
educationGradingSchemeGrade5.setMinPercentage(60f);
grades1.add(educationGradingSchemeGrade5);
EducationGradingSchemeGrade educationGradingSchemeGrade6 = new EducationGradingSchemeGrade();
educationGradingSchemeGrade6.setDisplayName("F");
educationGradingSchemeGrade6.setMinPercentage(0f);
grades1.add(educationGradingSchemeGrade6);
educationGradingScheme1.setGrades(grades1);
gradingSchemes.add(educationGradingScheme1);
educationAssignmentSettings.setGradingSchemes(gradingSchemes);
EducationAssignmentSettings result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().patch(educationAssignmentSettings);


```