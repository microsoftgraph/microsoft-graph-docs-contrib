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
property.setId("fb859cd3-943b-4cd6-9bbe-fe1c39eace0e");
property.setDisplayName("Lab Test");
gradingCategoriesDelta.add(property);
 property1 = new ();
property1.setOdataContext("https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity");
property1.setId("e2a86277-24f9-4f29-8196-8c83fc69d00d");
property1.setReason("deleted");
gradingCategoriesDelta.add(property1);
 property2 = new ();
property2.setDisplayName("Lab Practice");
property2.setPercentageWeight(30);
gradingCategoriesDelta.add(property2);
 property3 = new ();
property3.setDisplayName("Lab Theory");
property3.setPercentageWeight(10);
gradingCategoriesDelta.add(property3);
additionalData.put("gradingCategories@delta", gradingCategoriesDelta);
educationAssignmentSettings.setAdditionalData(additionalData);
EducationAssignmentSettings result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().patch(educationAssignmentSettings);


```