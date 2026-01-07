---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.datasecurityandgovernance.sensitivitylabels.computerightsandinheritance.ComputeRightsAndInheritancePostRequestBody computeRightsAndInheritancePostRequestBody = new com.microsoft.graph.security.datasecurityandgovernance.sensitivitylabels.computerightsandinheritance.ComputeRightsAndInheritancePostRequestBody();
computeRightsAndInheritancePostRequestBody.setDelegatedUserEmail("String");
computeRightsAndInheritancePostRequestBody.setLocale("String");
LinkedList<ProtectedContent> protectedContents = new LinkedList<ProtectedContent>();
ProtectedContent protectedContent = new ProtectedContent();
protectedContent.setOdataType("microsoft.graph.protectedContent");
protectedContents.add(protectedContent);
computeRightsAndInheritancePostRequestBody.setProtectedContents(protectedContents);
LinkedList<String> supportedContentFormats = new LinkedList<String>();
supportedContentFormats.add("String");
computeRightsAndInheritancePostRequestBody.setSupportedContentFormats(supportedContentFormats);
var result = graphClient.security().dataSecurityAndGovernance().sensitivityLabels().computeRightsAndInheritance().post(computeRightsAndInheritancePostRequestBody);


```