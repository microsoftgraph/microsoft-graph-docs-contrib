---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSubmissionResource educationSubmissionResource = new EducationSubmissionResource();
EducationExcelResource resource = new EducationExcelResource();
resource.setOdataType("#microsoft.graph.educationExcelResource");
resource.setDisplayName("userAgeGroup QueryParameter Test.xlsx");
resource.setFileUrl("https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RONPUDM2CZKNRF3TGHYUM7Z64WE");
educationSubmissionResource.setResource(resource);
EducationSubmissionResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").resources().post(educationSubmissionResource);


```