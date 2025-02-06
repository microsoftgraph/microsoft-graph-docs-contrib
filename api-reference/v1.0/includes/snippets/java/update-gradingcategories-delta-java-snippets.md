---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentSettings educationAssignmentSettings = new EducationAssignmentSettings();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> gradingCategoriesDelta = new LinkedList<Object>();
 property = new ();
property.setId("03bd9196-ce2e-41bd-902f-df9ae02de4db");
property.setDisplayName("Lab Updated");
gradingCategoriesDelta.add(property);
 property1 = new ();
property1.setOdataContext("https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity");
property1.setId("109e5d73-3ef7-42a5-88d8-7e30cdb85f06");
property1.setReason("deleted");
gradingCategoriesDelta.add(property1);
 property2 = new ();
property2.setDisplayName("New Homework");
property2.setPercentageWeight(50);
gradingCategoriesDelta.add(property2);
additionalData.put("gradingCategories@delta", gradingCategoriesDelta);
educationAssignmentSettings.setAdditionalData(additionalData);
EducationAssignmentSettings result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().patch(educationAssignmentSettings);


```