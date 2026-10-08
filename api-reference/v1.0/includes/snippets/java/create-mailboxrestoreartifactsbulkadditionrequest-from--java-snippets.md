---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxRestoreArtifactsBulkAdditionRequest mailboxRestoreArtifactsBulkAdditionRequest = new MailboxRestoreArtifactsBulkAdditionRequest();
mailboxRestoreArtifactsBulkAdditionRequest.setDisplayName("Usermailbox-BulkRestoreArtifacts");
LinkedList<String> mailboxes = new LinkedList<String>();
mailboxes.add("contoso1@micorosft.com");
mailboxes.add("consotos2@microsoft.com");
mailboxes.add("contoso3@microsoft.com");
mailboxRestoreArtifactsBulkAdditionRequest.setMailboxes(mailboxes);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-01-08T00:00:00Z");
protectionTimePeriod.setEndDateTime(endDateTime);
mailboxRestoreArtifactsBulkAdditionRequest.setProtectionTimePeriod(protectionTimePeriod);
mailboxRestoreArtifactsBulkAdditionRequest.setDestinationType(DestinationType.New);
mailboxRestoreArtifactsBulkAdditionRequest.setTags(EnumSet.of(RestorePointTags.FastRestore));
mailboxRestoreArtifactsBulkAdditionRequest.setRestorePointPreference(RestorePointPreference.Latest);
MailboxRestoreArtifactsBulkAdditionRequest result = graphClient.solutions().backupRestore().exchangeRestoreSessions().byExchangeRestoreSessionId("{exchangeRestoreSession-id}").mailboxRestoreArtifactsBulkAdditionRequests().post(mailboxRestoreArtifactsBulkAdditionRequest);


```