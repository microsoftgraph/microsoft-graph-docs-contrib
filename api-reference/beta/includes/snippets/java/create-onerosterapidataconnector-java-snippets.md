---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.OneRosterApiDataConnector industryDataConnector = new com.microsoft.graph.beta.models.industrydata.OneRosterApiDataConnector();
industryDataConnector.setOdataType("#microsoft.graph.industryData.oneRosterApiDataConnector");
industryDataConnector.setDisplayName("Generic OAuth2 Connector");
industryDataConnector.setApiFormat(com.microsoft.graph.beta.models.industrydata.ApiFormat.OneRoster);
industryDataConnector.setBaseUrl("https://fakeProvider.net/ims/oneroster/v1p1");
industryDataConnector.setApiVersion("1.1");
com.microsoft.graph.beta.models.industrydata.OAuth2ClientCredential credential = new com.microsoft.graph.beta.models.industrydata.OAuth2ClientCredential();
credential.setOdataType("#microsoft.graph.industryData.oAuth2ClientCredential");
credential.setDisplayName("One Roster API Credentials");
credential.setClientId("530be723-6af3-4952-8658-668fb2598ad7");
credential.setClientSecret("thisIsASecret");
credential.setTokenUrl("https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token");
credential.setScope(null);
industryDataConnector.setCredential(credential);
industryDataConnector.setIsDemographicsEnabled(false);
industryDataConnector.setIsFlagsEnabled(false);
industryDataConnector.setIsContactsEnabled(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("sourceSystem@odata.bind", "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')");
industryDataConnector.setAdditionalData(additionalData);
com.microsoft.graph.models.industrydata.IndustryDataConnector result = graphClient.external().industryData().dataConnectors().post(industryDataConnector);


```