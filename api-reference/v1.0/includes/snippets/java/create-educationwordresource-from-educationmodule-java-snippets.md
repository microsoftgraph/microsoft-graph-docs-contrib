---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationWordResource resource = new EducationWordResource();
resource.setOdataType("#microsoft.graph.educationWordResource");
resource.setDisplayName("Word_file.docx");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 file = new ();
file.setOdataid("https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3XYXSBRKMQM5GISQGPVO6BNO27");
additionalData.put("file", file);
resource.setAdditionalData(additionalData);
educationModuleResource.setResource(resource);
EducationModuleResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().byEducationModuleId("{educationModule-id}").resources().post(educationModuleResource);


```