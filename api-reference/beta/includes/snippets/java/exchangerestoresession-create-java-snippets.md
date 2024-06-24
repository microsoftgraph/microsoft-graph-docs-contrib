---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeRestoreSession exchangeRestoreSession = new ExchangeRestoreSession();
LinkedList<MailboxRestoreArtifact> mailboxRestoreArtifacts = new LinkedList<MailboxRestoreArtifact>();
MailboxRestoreArtifact mailboxRestoreArtifact = new MailboxRestoreArtifact();
RestorePoint restorePoint = new RestorePoint();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "1f1fccc3-a642-4f61-bf49-f37b9a888279");
restorePoint.setAdditionalData(additionalData);
mailboxRestoreArtifact.setRestorePoint(restorePoint);
mailboxRestoreArtifact.setDestinationType(DestinationType.InPlace);
mailboxRestoreArtifacts.add(mailboxRestoreArtifact);
MailboxRestoreArtifact mailboxRestoreArtifact1 = new MailboxRestoreArtifact();
RestorePoint restorePoint1 = new RestorePoint();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@odata.id", "1f1fccc3-a642-4f61-bf49-f37b9a888280");
restorePoint1.setAdditionalData(additionalData1);
mailboxRestoreArtifact1.setRestorePoint(restorePoint1);
mailboxRestoreArtifact1.setDestinationType(DestinationType.InPlace);
mailboxRestoreArtifacts.add(mailboxRestoreArtifact1);
exchangeRestoreSession.setMailboxRestoreArtifacts(mailboxRestoreArtifacts);
ExchangeRestoreSession result = graphClient.solutions().backupRestore().exchangeRestoreSessions().post(exchangeRestoreSession);


```