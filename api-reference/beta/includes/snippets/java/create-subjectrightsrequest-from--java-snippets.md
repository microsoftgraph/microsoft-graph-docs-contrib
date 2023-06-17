---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubjectRightsRequest subjectRightsRequest = new SubjectRightsRequest();
subjectRightsRequest.type = SubjectRightsRequestType.EXPORT;
subjectRightsRequest.contentQuery = "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))";
subjectRightsRequest.dataSubjectType = DataSubjectType.CUSTOMER;
subjectRightsRequest.externalId = "F53BF2DA-607D-412A-B568-FAA0F023AC0B";
subjectRightsRequest.displayName = "Export report for customer Id: 12345";
subjectRightsRequest.description = "This is a export request";
subjectRightsRequest.includeAllVersions = false;
subjectRightsRequest.includeAuthoredContent = true;
subjectRightsRequest.internalDueDateTime = OffsetDateTimeSerializer.deserialize("2022-07-20T22:42:28Z");
DataSubject dataSubject = new DataSubject();
dataSubject.firstName = "Diego";
dataSubject.lastName = "Siciliani";
dataSubject.email = "Diego.Siciliani@contoso.com";
dataSubject.residency = "USA";
subjectRightsRequest.dataSubject = dataSubject;
subjectRightsRequest.mailboxLocations = null;
subjectRightsRequest.pauseAfterEstimate = true;
LinkedList<String> regulationsList = new LinkedList<String>();
regulationsList.add("CCPA");
subjectRightsRequest.regulations = regulationsList;
SubjectRightsRequestAllSiteLocation siteLocations = new SubjectRightsRequestAllSiteLocation();
subjectRightsRequest.siteLocations = siteLocations;
LinkedList<User> approversList = new LinkedList<User>();
User approvers = new User();
approvers.id = "1B761ED2-AA7E-4D82-9CF5-C09D737B6167";
approversList.add(approvers);
UserCollectionResponse userCollectionResponse = new UserCollectionResponse();
userCollectionResponse.value = approversList;
UserCollectionPage userCollectionPage = new UserCollectionPage(userCollectionResponse, null);
subjectRightsRequest.approvers = userCollectionPage;

graphClient.privacy().subjectRightsRequests()
	.buildRequest()
	.post(subjectRightsRequest);

```