---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.setDistributeForStudentWork(false);
EducationMediaResource resource = new EducationMediaResource();
resource.setOdataType("microsoft.graph.educationMediaResource");
resource.setDisplayName("homework example.PNG");
resource.setFileUrl("https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RMUWOKAGSJZ6BHINJVKNMOOJABF");
educationAssignmentResource.setResource(resource);
EducationAssignmentResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").resources().post(educationAssignmentResource);


```