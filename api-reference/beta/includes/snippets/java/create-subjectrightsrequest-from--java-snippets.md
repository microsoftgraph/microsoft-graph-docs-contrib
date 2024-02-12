---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SubjectRightsRequest subjectRightsRequest = new SubjectRightsRequest();
subjectRightsRequest.setType(SubjectRightsRequestType.Export);
subjectRightsRequest.setContentQuery("((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))");
subjectRightsRequest.setDataSubjectType(DataSubjectType.Customer);
subjectRightsRequest.setExternalId("F53BF2DA-607D-412A-B568-FAA0F023AC0B");
subjectRightsRequest.setDisplayName("Export report for customer Id: 12345");
subjectRightsRequest.setDescription("This is a export request");
subjectRightsRequest.setIncludeAllVersions(false);
subjectRightsRequest.setIncludeAuthoredContent(true);
OffsetDateTime internalDueDateTime = OffsetDateTime.parse("2022-07-20T22:42:28Z");
subjectRightsRequest.setInternalDueDateTime(internalDueDateTime);
DataSubject dataSubject = new DataSubject();
dataSubject.setFirstName("Diego");
dataSubject.setLastName("Siciliani");
dataSubject.setEmail("Diego.Siciliani@contoso.com");
dataSubject.setResidency("USA");
subjectRightsRequest.setDataSubject(dataSubject);
subjectRightsRequest.setMailboxLocations(null);
subjectRightsRequest.setPauseAfterEstimate(true);
LinkedList<String> regulations = new LinkedList<String>();
regulations.add("CCPA");
subjectRightsRequest.setRegulations(regulations);
SubjectRightsRequestAllSiteLocation siteLocations = new SubjectRightsRequestAllSiteLocation();
siteLocations.setOdataType("microsoft.graph.subjectRightsRequestAllSiteLocation");
subjectRightsRequest.setSiteLocations(siteLocations);
LinkedList<User> approvers = new LinkedList<User>();
User user = new User();
user.setId("1B761ED2-AA7E-4D82-9CF5-C09D737B6167");
approvers.add(user);
subjectRightsRequest.setApprovers(approvers);
SubjectRightsRequest result = graphClient.privacy().subjectRightsRequests().post(subjectRightsRequest);


```