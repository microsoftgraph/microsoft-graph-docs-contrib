---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody searchPostRequestBody = new com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody();
ArtifactQuery artifactQuery = new ArtifactQuery();
artifactQuery.setQueryExpression("((subject -contains ‘Finance’)  -or  (subject -contains ‘Legal’)) -and (sender -eq 'alex@contoso.com') -and (recipient -eq 'carol@contoso.com') -and hasAttachment -eq true");
artifactQuery.setArtifactType(RestorableArtifact.Message);
searchPostRequestBody.setArtifactQuery(artifactQuery);
LinkedList<String> protectionUnitIds = new LinkedList<String>();
protectionUnitIds.add("23014d8c-71fe-4d00-a01a-31850bc5b42a");
searchPostRequestBody.setProtectionUnitIds(protectionUnitIds);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
searchPostRequestBody.setProtectionTimePeriod(protectionTimePeriod);
searchPostRequestBody.setRestorePointPreference(RestorePointPreference.Oldest);
var result = graphClient.solutions().backupRestore().restorePoints().search().post(searchPostRequestBody);


```