---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMemberCollectionWithReferencesPage allowedMembers = graphClient.teams("893075dd-2487-5634-925f-022c42e20265").channels("19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2").sharedWithTeams("893075dd-2487-5634-925f-022c42e20265").allowedMembers()
	.buildRequest()
	.get();

```