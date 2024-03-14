---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
CustomSecurityAttributeValue customSecurityAttributes = new CustomSecurityAttributeValue();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 engineering = new ();
engineering.setOdataType("#Microsoft.DirectoryServices.CustomSecurityAttributeValue");
engineering.setProjectDate("2022-10-01");
additionalData.put("Engineering", engineering);
customSecurityAttributes.setAdditionalData(additionalData);
servicePrincipal.setCustomSecurityAttributes(customSecurityAttributes);
ServicePrincipal result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").patch(servicePrincipal);


```