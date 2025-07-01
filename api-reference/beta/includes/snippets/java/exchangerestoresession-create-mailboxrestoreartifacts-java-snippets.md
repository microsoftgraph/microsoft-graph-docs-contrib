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
restorePoint.setId("1f1fccc3-a642-4f61-bf49-f37b9a888279");
mailboxRestoreArtifact.setRestorePoint(restorePoint);
mailboxRestoreArtifact.setDestinationType(DestinationType.InPlace);
mailboxRestoreArtifacts.add(mailboxRestoreArtifact);
MailboxRestoreArtifact mailboxRestoreArtifact1 = new MailboxRestoreArtifact();
RestorePoint restorePoint1 = new RestorePoint();
restorePoint1.setId("1f1fccc3-a642-4f61-bf49-f37b9a888280");
mailboxRestoreArtifact1.setRestorePoint(restorePoint1);
mailboxRestoreArtifact1.setDestinationType(DestinationType.InPlace);
mailboxRestoreArtifacts.add(mailboxRestoreArtifact1);
exchangeRestoreSession.setMailboxRestoreArtifacts(mailboxRestoreArtifacts);
ExchangeRestoreSession result = graphClient.solutions().backupRestore().exchangeRestoreSessions().post(exchangeRestoreSession);


```