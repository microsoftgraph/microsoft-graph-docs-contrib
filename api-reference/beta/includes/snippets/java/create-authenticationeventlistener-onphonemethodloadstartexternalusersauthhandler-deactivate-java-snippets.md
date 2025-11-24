---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPhoneMethodLoadStartListener authenticationEventListener = new OnPhoneMethodLoadStartListener();
authenticationEventListener.setOdataType("#microsoft.graph.onPhoneMethodLoadStartListener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("3dfff01b-0afb-4a07-967f-d1ccbd81102a");
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
authenticationEventListener.setPriority(500);
OnPhoneMethodLoadStartExternalUsersAuthHandler handler = new OnPhoneMethodLoadStartExternalUsersAuthHandler();
handler.setOdataType("#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler");
PhoneOptions smsOptions = new PhoneOptions();
LinkedList<Number> includeAdditionalRegions = new LinkedList<Number>();
smsOptions.setIncludeAdditionalRegions(includeAdditionalRegions);
LinkedList<Number> excludeRegions = new LinkedList<Number>();
excludeRegions.add(1001);
excludeRegions.add(99);
excludeRegions.add(777);
smsOptions.setExcludeRegions(excludeRegions);
handler.setSmsOptions(smsOptions);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```