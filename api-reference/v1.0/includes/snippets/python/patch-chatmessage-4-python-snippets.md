---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.messagetype(ChatMessageType.Message('chatmessagetype.message'))

request_body.subject=null

request_body.summary=null

request_body.importance(ChatMessageImportance.Normal('chatmessageimportance.normal'))

request_body.locale = 'en-us'

from = ChatMessageFromIdentitySet()
from.application=null

from.device=null

fromuser = Identity()
fromuser.id = '3b102402-813e-4e17-a6b2-f841aef1fdfc'

fromuser.display_name = 'Lam Cong'

additional_data = [
'user_identity_type' => 'aadUser', 
];
fromuser.additional_data(additional_data)



from.user = fromuser
additional_data = [
'conversation' => 		null,
];
from.additional_data(additional_data)



request_body.from = from
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>'


request_body.body = body
attachments_chat_message_attachment1 = ChatMessageAttachment()
attachments_chat_message_attachment1.id = 'e8f78756199240b88448ae0fc6db112d'

attachments_chat_message_attachment1.content_type = 'application/vnd.microsoft.card.hero'

attachments_chat_message_attachment1.contentUrl=null

attachments_chat_message_attachment1.content = '{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \"\",\r\n      \"value\": \"&i am back& <>= \"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}'

attachments_chat_message_attachment1.name=null

attachments_chat_message_attachment1.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment1;
attachments_chat_message_attachment2 = ChatMessageAttachment()
attachments_chat_message_attachment2.id = '638464e32834471ea202007da60a5ae6'

attachments_chat_message_attachment2.content_type = 'application/vnd.microsoft.card.hero'

attachments_chat_message_attachment2.contentUrl=null

attachments_chat_message_attachment2.content = '{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you\'re cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \"\",\r\n      \"text\": \"text = &message back& <>= \"\",\r\n      \"displayText\": \"displayText = &message back& <>= \"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}'

attachments_chat_message_attachment2.name=null

attachments_chat_message_attachment2.thumbnailUrl=null


attachmentsArray []= attachmentsChatMessageAttachment2;
request_body.attachments(attachmentsArray)


request_body.Mentions([])

reactions_chat_message_reaction1 = ChatMessageReaction()
reactions_chat_message_reaction1.reaction_type = 'angry'

reactions_chat_message_reaction1.createdDateTime = DateTime('2018-10-21T08:10:30.489Z')

reactions_chat_message_reaction1user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction1user.application=null

reactions_chat_message_reaction1user.device=null

reactions_chat_message_reaction1useruser = Identity()
reactions_chat_message_reaction1useruser.id = 'f1b66449-b46d-49b0-9c3c-53c10a5c818e'

reactions_chat_message_reaction1useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction1useruser.additional_data(additional_data)



reactions_chat_message_reaction1user.user = reactions_chat_message_reaction1useruser

reactions_chat_message_reaction1.user = reactions_chat_message_reaction1user

reactionsArray []= reactionsChatMessageReaction1;
reactions_chat_message_reaction2 = ChatMessageReaction()
reactions_chat_message_reaction2.reaction_type = 'laugh'

reactions_chat_message_reaction2.createdDateTime = DateTime('2018-10-21T08:10:32.489Z')

reactions_chat_message_reaction2user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction2user.application=null

reactions_chat_message_reaction2user.device=null

reactions_chat_message_reaction2useruser = Identity()
reactions_chat_message_reaction2useruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

reactions_chat_message_reaction2useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction2useruser.additional_data(additional_data)



reactions_chat_message_reaction2user.user = reactions_chat_message_reaction2useruser

reactions_chat_message_reaction2.user = reactions_chat_message_reaction2user

reactionsArray []= reactionsChatMessageReaction2;
reactions_chat_message_reaction3 = ChatMessageReaction()
reactions_chat_message_reaction3.reaction_type = 'like'

reactions_chat_message_reaction3.createdDateTime = DateTime('2018-10-21T02:17:14.67Z')

reactions_chat_message_reaction3user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction3user.application=null

reactions_chat_message_reaction3user.device=null

reactions_chat_message_reaction3useruser = Identity()
reactions_chat_message_reaction3useruser.id = 'f1b66449-b46d-49b0-9c3c-53c10a5c818e'

reactions_chat_message_reaction3useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction3useruser.additional_data(additional_data)



reactions_chat_message_reaction3user.user = reactions_chat_message_reaction3useruser

reactions_chat_message_reaction3.user = reactions_chat_message_reaction3user

reactionsArray []= reactionsChatMessageReaction3;
reactions_chat_message_reaction4 = ChatMessageReaction()
reactions_chat_message_reaction4.reaction_type = 'like'

reactions_chat_message_reaction4.createdDateTime = DateTime('2018-10-21T02:34:40.3Z')

reactions_chat_message_reaction4user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction4user.application=null

reactions_chat_message_reaction4user.device=null

reactions_chat_message_reaction4useruser = Identity()
reactions_chat_message_reaction4useruser.id = '4c9041b7-449a-40f7-8855-56da239b9fd1'

reactions_chat_message_reaction4useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction4useruser.additional_data(additional_data)



reactions_chat_message_reaction4user.user = reactions_chat_message_reaction4useruser

reactions_chat_message_reaction4.user = reactions_chat_message_reaction4user

reactionsArray []= reactionsChatMessageReaction4;
reactions_chat_message_reaction5 = ChatMessageReaction()
reactions_chat_message_reaction5.reaction_type = 'like'

reactions_chat_message_reaction5.createdDateTime = DateTime('2018-10-21T08:10:25.489Z')

reactions_chat_message_reaction5user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction5user.application=null

reactions_chat_message_reaction5user.device=null

reactions_chat_message_reaction5useruser = Identity()
reactions_chat_message_reaction5useruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

reactions_chat_message_reaction5useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction5useruser.additional_data(additional_data)



reactions_chat_message_reaction5user.user = reactions_chat_message_reaction5useruser

reactions_chat_message_reaction5.user = reactions_chat_message_reaction5user

reactionsArray []= reactionsChatMessageReaction5;
reactions_chat_message_reaction6 = ChatMessageReaction()
reactions_chat_message_reaction6.reaction_type = 'heart'

reactions_chat_message_reaction6.createdDateTime = DateTime('2018-10-21T08:10:31.489Z')

reactions_chat_message_reaction6user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction6user.application=null

reactions_chat_message_reaction6user.device=null

reactions_chat_message_reaction6useruser = Identity()
reactions_chat_message_reaction6useruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

reactions_chat_message_reaction6useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction6useruser.additional_data(additional_data)



reactions_chat_message_reaction6user.user = reactions_chat_message_reaction6useruser

reactions_chat_message_reaction6.user = reactions_chat_message_reaction6user

reactionsArray []= reactionsChatMessageReaction6;
reactions_chat_message_reaction7 = ChatMessageReaction()
reactions_chat_message_reaction7.reaction_type = 'sad'

reactions_chat_message_reaction7.createdDateTime = DateTime('2018-10-21T08:10:33.489Z')

reactions_chat_message_reaction7user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction7user.application=null

reactions_chat_message_reaction7user.device=null

reactions_chat_message_reaction7useruser = Identity()
reactions_chat_message_reaction7useruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

reactions_chat_message_reaction7useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction7useruser.additional_data(additional_data)



reactions_chat_message_reaction7user.user = reactions_chat_message_reaction7useruser

reactions_chat_message_reaction7.user = reactions_chat_message_reaction7user

reactionsArray []= reactionsChatMessageReaction7;
reactions_chat_message_reaction8 = ChatMessageReaction()
reactions_chat_message_reaction8.reaction_type = 'surprised'

reactions_chat_message_reaction8.createdDateTime = DateTime('2018-10-21T08:10:34.489Z')

reactions_chat_message_reaction8user = ChatMessageReactionIdentitySet()
reactions_chat_message_reaction8user.application=null

reactions_chat_message_reaction8user.device=null

reactions_chat_message_reaction8useruser = Identity()
reactions_chat_message_reaction8useruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

reactions_chat_message_reaction8useruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
reactions_chat_message_reaction8useruser.additional_data(additional_data)



reactions_chat_message_reaction8user.user = reactions_chat_message_reaction8useruser

reactions_chat_message_reaction8.user = reactions_chat_message_reaction8user

reactionsArray []= reactionsChatMessageReaction8;
request_body.reactions(reactionsArray)


message_history_chat_message_history_item1 = ChatMessageHistoryItem()
message_history_chat_message_history_item1.modifiedDateTime = DateTime('2018-10-21T08:10:30.489Z')

message_history_chat_message_history_item1.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item1reaction = ChatMessageReaction()
message_history_chat_message_history_item1reaction.reaction_type = 'angry'

message_history_chat_message_history_item1reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item1reactionuser.application=null

message_history_chat_message_history_item1reactionuser.device=null

message_history_chat_message_history_item1reactionuseruser = Identity()
message_history_chat_message_history_item1reactionuseruser.id = 'f1b66449-b46d-49b0-9c3c-53c10a5c818e'

message_history_chat_message_history_item1reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item1reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item1reactionuser.user = message_history_chat_message_history_item1reactionuseruser

message_history_chat_message_history_item1reaction.user = message_history_chat_message_history_item1reactionuser

message_history_chat_message_history_item1.reaction = message_history_chat_message_history_item1reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem1;
message_history_chat_message_history_item2 = ChatMessageHistoryItem()
message_history_chat_message_history_item2.modifiedDateTime = DateTime('2018-10-21T08:10:32.489Z')

message_history_chat_message_history_item2.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item2reaction = ChatMessageReaction()
message_history_chat_message_history_item2reaction.reaction_type = 'laugh'

message_history_chat_message_history_item2reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item2reactionuser.application=null

message_history_chat_message_history_item2reactionuser.device=null

message_history_chat_message_history_item2reactionuseruser = Identity()
message_history_chat_message_history_item2reactionuseruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

message_history_chat_message_history_item2reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item2reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item2reactionuser.user = message_history_chat_message_history_item2reactionuseruser

message_history_chat_message_history_item2reaction.user = message_history_chat_message_history_item2reactionuser

message_history_chat_message_history_item2.reaction = message_history_chat_message_history_item2reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem2;
message_history_chat_message_history_item3 = ChatMessageHistoryItem()
message_history_chat_message_history_item3.modifiedDateTime = DateTime('2018-10-21T02:17:14.67Z')

message_history_chat_message_history_item3.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item3reaction = ChatMessageReaction()
message_history_chat_message_history_item3reaction.reaction_type = 'like'

message_history_chat_message_history_item3reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item3reactionuser.application=null

message_history_chat_message_history_item3reactionuser.device=null

message_history_chat_message_history_item3reactionuseruser = Identity()
message_history_chat_message_history_item3reactionuseruser.id = 'f1b66449-b46d-49b0-9c3c-53c10a5c818e'

message_history_chat_message_history_item3reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item3reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item3reactionuser.user = message_history_chat_message_history_item3reactionuseruser

message_history_chat_message_history_item3reaction.user = message_history_chat_message_history_item3reactionuser

message_history_chat_message_history_item3.reaction = message_history_chat_message_history_item3reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem3;
message_history_chat_message_history_item4 = ChatMessageHistoryItem()
message_history_chat_message_history_item4.modifiedDateTime = DateTime('2018-10-21T02:34:40.3Z')

message_history_chat_message_history_item4.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item4reaction = ChatMessageReaction()
message_history_chat_message_history_item4reaction.reaction_type = 'like'

message_history_chat_message_history_item4reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item4reactionuser.application=null

message_history_chat_message_history_item4reactionuser.device=null

message_history_chat_message_history_item4reactionuseruser = Identity()
message_history_chat_message_history_item4reactionuseruser.id = '4c9041b7-449a-40f7-8855-56da239b9fd1'

message_history_chat_message_history_item4reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item4reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item4reactionuser.user = message_history_chat_message_history_item4reactionuseruser

message_history_chat_message_history_item4reaction.user = message_history_chat_message_history_item4reactionuser

message_history_chat_message_history_item4.reaction = message_history_chat_message_history_item4reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem4;
message_history_chat_message_history_item5 = ChatMessageHistoryItem()
message_history_chat_message_history_item5.modifiedDateTime = DateTime('2018-10-21T08:10:25.489Z')

message_history_chat_message_history_item5.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item5reaction = ChatMessageReaction()
message_history_chat_message_history_item5reaction.reaction_type = 'like'

message_history_chat_message_history_item5reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item5reactionuser.application=null

message_history_chat_message_history_item5reactionuser.device=null

message_history_chat_message_history_item5reactionuseruser = Identity()
message_history_chat_message_history_item5reactionuseruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

message_history_chat_message_history_item5reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item5reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item5reactionuser.user = message_history_chat_message_history_item5reactionuseruser

message_history_chat_message_history_item5reaction.user = message_history_chat_message_history_item5reactionuser

message_history_chat_message_history_item5.reaction = message_history_chat_message_history_item5reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem5;
message_history_chat_message_history_item6 = ChatMessageHistoryItem()
message_history_chat_message_history_item6.modifiedDateTime = DateTime('2018-10-21T08:10:31.489Z')

message_history_chat_message_history_item6.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item6reaction = ChatMessageReaction()
message_history_chat_message_history_item6reaction.reaction_type = 'heart'

message_history_chat_message_history_item6reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item6reactionuser.application=null

message_history_chat_message_history_item6reactionuser.device=null

message_history_chat_message_history_item6reactionuseruser = Identity()
message_history_chat_message_history_item6reactionuseruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

message_history_chat_message_history_item6reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item6reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item6reactionuser.user = message_history_chat_message_history_item6reactionuseruser

message_history_chat_message_history_item6reaction.user = message_history_chat_message_history_item6reactionuser

message_history_chat_message_history_item6.reaction = message_history_chat_message_history_item6reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem6;
message_history_chat_message_history_item7 = ChatMessageHistoryItem()
message_history_chat_message_history_item7.modifiedDateTime = DateTime('2018-10-21T08:10:33.489Z')

message_history_chat_message_history_item7.actions(ChatMessageActions.ReactionAdded('chatmessageactions.reactionadded'))

message_history_chat_message_history_item7reaction = ChatMessageReaction()
message_history_chat_message_history_item7reaction.reaction_type = 'sad'

message_history_chat_message_history_item7reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item7reactionuser.application=null

message_history_chat_message_history_item7reactionuser.device=null

message_history_chat_message_history_item7reactionuseruser = Identity()
message_history_chat_message_history_item7reactionuseruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

message_history_chat_message_history_item7reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item7reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item7reactionuser.user = message_history_chat_message_history_item7reactionuseruser

message_history_chat_message_history_item7reaction.user = message_history_chat_message_history_item7reactionuser

message_history_chat_message_history_item7.reaction = message_history_chat_message_history_item7reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem7;
message_history_chat_message_history_item8 = ChatMessageHistoryItem()
message_history_chat_message_history_item8.modifiedDateTime = DateTime('2018-10-21T08:10:34.489Z')

message_history_chat_message_history_item8.actions(ChatMessageActions.Surprised('chatmessageactions.surprised'))

message_history_chat_message_history_item8reaction = ChatMessageReaction()
message_history_chat_message_history_item8reaction.reaction_type = 'sad'

message_history_chat_message_history_item8reactionuser = ChatMessageReactionIdentitySet()
message_history_chat_message_history_item8reactionuser.application=null

message_history_chat_message_history_item8reactionuser.device=null

message_history_chat_message_history_item8reactionuseruser = Identity()
message_history_chat_message_history_item8reactionuseruser.id = '03a02232-d8f5-4970-a77e-6e8c76ce7a4e'

message_history_chat_message_history_item8reactionuseruser.displayName=null

additional_data = [
'user_identity_type' => 'aadUser', 
];
message_history_chat_message_history_item8reactionuseruser.additional_data(additional_data)



message_history_chat_message_history_item8reactionuser.user = message_history_chat_message_history_item8reactionuseruser

message_history_chat_message_history_item8reaction.user = message_history_chat_message_history_item8reactionuser

message_history_chat_message_history_item8.reaction = message_history_chat_message_history_item8reaction

messageHistoryArray []= messageHistoryChatMessageHistoryItem8;
request_body.messagehistory(messageHistoryArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.by_message_id('chatMessage-id').patch(request_body = request_body)


```