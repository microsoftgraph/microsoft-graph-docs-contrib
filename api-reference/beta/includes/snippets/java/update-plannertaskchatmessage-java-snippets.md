---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTaskChatMessage plannerTaskChatMessage = new PlannerTaskChatMessage();
plannerTaskChatMessage.setContent("<div>Updated message with <span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> mention</div>");
LinkedList<PlannerTaskChatMention> mentions = new LinkedList<PlannerTaskChatMention>();
PlannerTaskChatMention plannerTaskChatMention = new PlannerTaskChatMention();
plannerTaskChatMention.setMentioned("6463a5ce-2119-4198-9f2a-628761df4a62");
plannerTaskChatMention.setPosition(0);
plannerTaskChatMention.setMentionType(PlannerTaskChatMentionType.User);
mentions.add(plannerTaskChatMention);
plannerTaskChatMessage.setMentions(mentions);
PlannerTaskChatMessage result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").messages().byPlannerTaskChatMessageId("{plannerTaskChatMessage-id}").patch(plannerTaskChatMessage);


```