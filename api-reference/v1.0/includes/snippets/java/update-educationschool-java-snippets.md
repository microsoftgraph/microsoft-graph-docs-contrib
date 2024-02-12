---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSchool educationSchool = new EducationSchool();
educationSchool.setDisplayName("Fabrikam Arts High School");
educationSchool.setDescription("Magnate school for the arts. Los Angeles School District");
EducationSchool result = graphClient.education().schools().byEducationSchoolId("{educationSchool-id}").patch(educationSchool);


```