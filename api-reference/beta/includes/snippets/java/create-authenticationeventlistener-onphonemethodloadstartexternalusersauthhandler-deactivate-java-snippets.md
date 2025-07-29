---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationEventListener authenticationEventListener = new AuthenticationEventListener();
authenticationEventListener.setOdataType("#microsoft.graph.onPhoneMethodLoadStartListener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("3dfff01b-0afb-4a07-967f-d1ccbd81102a");
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("priority", 500);
 handler = new ();
handler.setOdataType("#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler");
 smsOptions = new ();
LinkedList<Object> includeAdditionalRegions = new LinkedList<Object>();
smsOptions.setIncludeAdditionalRegions(includeAdditionalRegions);
LinkedList<Number> excludeRegions = new LinkedList<Number>();
excludeRegions.add(1001);
excludeRegions.add(99);
excludeRegions.add(777);
smsOptions.setExcludeRegions(excludeRegions);
handler.setSmsOptions(smsOptions);
additionalData.put("handler", handler);
authenticationEventListener.setAdditionalData(additionalData);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```