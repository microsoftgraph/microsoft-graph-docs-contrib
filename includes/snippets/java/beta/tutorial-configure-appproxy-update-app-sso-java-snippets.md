---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.applications.item.Application application = new com.microsoft.graph.beta.applications.item.Application();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 onPremisesPublishing = new ();
 singleSignOnSettings = new ();
 kerberosSignOnSettings = new ();
kerberosSignOnSettings.setKerberosServicePrincipalName("HTTP/iwademo.contoso.com");
kerberosSignOnSettings.setKerberosSignOnMappingAttributeType("userPrincipalName");
singleSignOnSettings.setKerberosSignOnSettings(kerberosSignOnSettings);
singleSignOnSettings.setSingleSignOnMode("onPremisesKerberos");
onPremisesPublishing.setSingleSignOnSettings(singleSignOnSettings);
additionalData.put("onPremisesPublishing", onPremisesPublishing);
application.setAdditionalData(additionalData);
graphClient.applications().byApplicationId("{application-id}").patch(application);


```