---
title: "Working with Microsoft Teams messaging APIs in Microsoft Graph"
description: "Working with Microsoft Teams messaging"
author: "RamjotSingh"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Working with Microsoft Teams messaging APIs in Microsoft Graph

Microsoft Graph provides a comprehensive set of Microsoft Teams APIs that enable you to perform operations on Teams messages. This article describes the primary Teams API schema elements and provides an overview of the APIs to use based on high-level scenarios. For more details about Teams APIs in Microsoft Graph, see
[Use the Microsoft Graph API to work with Teams](/graph/api/resources/teams-api-overview).

## chatMessage schema

The [chatMessage](/graph/api/resources/chatMessage) resource type represents messages in Teams [chats](/graph/api/resources/chat) and [channels](/graph/api/resources/channel). This section describes the elements of the **chatMessage** schema.

> **Note:** The examples in this section show only the relevant schema elements and not the entire message payload.

### attachments

The [chatMessageAttachment](/graph/api/resources/chatmessageattachment) resource type represents entities that can be referenced from a [chatMessage](/graph/api/resources/chatMessage?preserve-view=true). These entities include files, tabs, cards, meetings, or other messages. The items themselves might be located somewhere else. For example, files might be stored in SharePoint. The following sections describe the possible types of attachments on a **chatMessage** object.

#### file attachment

When an [attachment](/graph/api/resources/chatmessageattachment) object refers to a file, it contains information about the file, including the link to open the file. The file itself is located in an accessible store like SharePoint. When a **chatMessage** has an attachment of type file, the value of the **contentType** property on the [attachment](/graph/api/resources/chatmessageattachment) resource is set to `reference`, and the **contentUrl** property contains the file URL.

> **Note:** The SharePoint URL is the link that opens the file; it is not the Microsoft Graph URL. Callers can, however, use the [access shared items](/graph/api/shares-get) API to get the information about the contents of the file.

The following example shows the schema for a file attachment.

```json
    "attachments": [
        {
            "id": "924D1F74-E0D2-4927-8A67-15ECEF455527",
            "contentType": "reference",
            "contentUrl": "https://testing.sharepoint.com/sites/Samples/Shared Documents/General/color.png",
            "content": null,
            "name": "color.png",
            "thumbnailUrl": null,
            "teamsAppId": null
        }
    ],
```

#### tab attachment

When an [attachment](/graph/api/resources/chatmessageattachment) object refers to a [tab](/graph/api/resources/teamstab) hosted in the present context, the **contentType** property is set to `tabReference`, the **id** property is set to the ID of the tab, and the **name** property is set to the tab name. This scenario often applies when tabs are newly added. 

The following example shows the schema for an tab attachment.

``` json
"attachments": [
        {
            "id": "tab::d64ea8d0-8b63-4f53-9bf6-806648176968",
            "contentType": "tabReference",
            "contentUrl": null,
            "content": null,
            "name": "Bing",
            "thumbnailUrl": null,
            "teamsAppId": null
        }
    ],
```
#### card attachment

Cards represent visual elements backed by a predefined schema. Teams supports the cards defined by the [Bot Framework](/azure/bot-service/rest-api/bot-framework-rest-connector-api-reference?view=azure-bot-service-4.0#attachment-object) in addition to the following card types:

- Code snippet - Set **contentType** to `application/vnd.microsoft.card.codesnippet`
- Announcement card - Set **contentType** set to `application/vnd.microsoft.card.announcement`

For cards, the **contentType** property is set to the type of card, and the **content** property contains the serialized json for the card.

> **Note:** Aspects of cards such as images might refer to external resources or resources hosted by Teams as [chatMessageHostedContent](/graph/api/resources/chatmessagehostedcontent).

The following example shows the schema for an adaptive card attachment. This card has images that are hosted by Teams.

```json
    "attachments": [
        {
            "id": "74d20c7f34aa4a7fb74e2b30004247c5",
            "contentType": "application/vnd.microsoft.card.adaptive",
            "contentUrl": null,
            "content": "{  \"type\": \"AdaptiveCard\",  \"body\": [    {      \"items\": [        {          \"columns\": [            {              \"width\": \"auto\",              \"items\": [                {                  \"size\": \"medium\",                  \"url\": \"https://graph.microsoft.com/beta/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages/1596694346004/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQyLTUxZDYxNGE5MDQ5ZTU4MjFlMTRmMGI2NmExNmVlNzhlL3ZpZXdzL2ltZ28=/$value\",                  \"height\": \"auto\",                  \"type\": \"Image\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"SHADES\",                  \"weight\": \"bolder\",                  \"type\": \"TextBlock\"                }              ],              \"type\": \"Column\"            },            {              \"width\": \"stretch\",              \"items\": [                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"08/31/2019 19:30:00\",                  \"type\": \"TextBlock\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"Final\",                  \"spacing\": \"None\",                  \"type\": \"TextBlock\"                },                {                  \"horizontalAlignment\": \"center\",                  \"size\": \"extraLarge\",                  \"text\": \"40 - 7\",                  \"type\": \"TextBlock\"                }              ],              \"spacing\": \"Medium\",              \"separator\": true,              \"type\": \"Column\"            },            {              \"width\": \"auto\",              \"items\": [                {                  \"horizontalAlignment\": \"center\",                  \"size\": \"medium\",                  \"url\": \"https://graph.microsoft.com/beta/teams/68a3e365-f7d9-4a56-b499-24332a9cc572/channels/19:0b50940236084d258c97b21bd01917b0@thread.skype/messages/1596694346004/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQyLWM4NjgwMjMzMzcyMzc2MmQ0MWEyY2QxMGVhMWI4ZGRhL3ZpZXdzL2ltZ28=/$value\",                  \"height\": \"auto\",                  \"type\": \"Image\"                },                {                  \"horizontalAlignment\": \"center\",                  \"text\": \"SKINS\",                  \"weight\": \"bolder\",                  \"type\": \"TextBlock\"                }              ],              \"spacing\": \"Medium\",              \"separator\": true,              \"type\": \"Column\"            }          ],          \"type\": \"ColumnSet\"        }      ],      \"type\": \"Container\"    }  ],  \"speak\": \"The Seattle Seahawks beat the Carolina Panthers 40-7\",  \"$schema\": \"http://adaptivecards.io/schemas/adaptive-card.json\",  \"version\": \"1.2\"}",
            "name": null,
            "thumbnailUrl": null,
            "teamsAppId": null
        }
    ]
```

For messages that are created by a Teams app, for example via [messaging extensions](/microsoftteams/platform/messaging-extensions/what-are-messaging-extensions), the **teamsAppId** property contains the ID of the app that sent the message. 

The following example shows the schema for an adaptive card attachment when the message was sent by a Teams app.

```json
    "attachments": [
        {
            "id": "f60e7358497741f5bdb5fa7f101fe425",
            "contentType": "application/vnd.microsoft.card.adaptive",
            "contentUrl": null,
            "content": "{  \"type\": \"AdaptiveCard\",  \"body\": [    {      \"items\": [        {          \"items\": [],          \"type\": \"Container\"        },        {          \"altText\": \"Awesome\",          \"horizontalAlignment\": \"center\",          \"url\": \"https://dev.praise.myanalytics.cdn.office.net/2024.1.31.2/assets/emojis/Trophy_Icon.png\",          \"width\": \"82px\",          \"height\": \"auto\",          \"spacing\": \"small\",          \"type\": \"Image\"        },        {          \"size\": \"large\",          \"text\": \"Awesome\",          \"weight\": \"lighter\",          \"wrap\": true,          \"spacing\": \"large\",          \"type\": \"TextBlock\"        },        {          \"size\": \"large\",          \"text\": \"Test User 1\",          \"weight\": \"bolder\",          \"wrap\": true,          \"spacing\": \"none\",          \"type\": \"TextBlock\"        },        {          \"size\": \"small\",          \"text\": \"From Test User 2\",          \"wrap\": true,          \"spacing\": \"extraLarge\",          \"type\": \"TextBlock\"        },        {          \"items\": [],          \"spacing\": \"small\",          \"type\": \"Container\"        }      ],      \"backgroundImage\": {        \"url\": \"https://dev.praise.myanalytics.cdn.office.net/2024.1.31.2/assets/themes/CornflowerGradient.png\"      },      \"type\": \"Container\"    },    {      \"columns\": [        {          \"width\": \"stretch\",          \"items\": [            {              \"text\": \"**[Review your praise history](https://teams.microsoft.com/l/entity/57e078b5-6c0e-44a1-a83f-45f75b030d4a)**\",              \"wrap\": true,              \"spacing\": \"small\",              \"type\": \"TextBlock\"            }          ],          \"type\": \"Column\"        },        {          \"width\": \"auto\",          \"items\": [            {              \"horizontalAlignment\": \"right\",              \"text\": \"**[Send praise](https://teams.microsoft.com/l/task/d832a33f-28c2-4969-8ad0-4fee681dc5b4)**\",              \"spacing\": \"small\",              \"type\": \"TextBlock\"            }          ],          \"type\": \"Column\"        }      ],      \"spacing\": \"small\",      \"type\": \"ColumnSet\"    }  ],  \"speak\": \"Praise card sent from Test User 2 to Test User 1. Awesome, with message \",  \"version\": \"1.2\"}",
            "name": null,
            "thumbnailUrl": null,
            "teamsAppId": "d832a33f-28c2-4969-8ad0-4fee681dc5b4"
        }
    ]
```

> **Note:** Microsoft Graph only supports cards that have the **OpenUrl** action set. Other actions like **ShowCard** are not supported. Microsoft Graph does allow messages posted by bots that have other actions in them to be read.

#### meeting attachment

When a meeting is scheduled in a channel, a message with meeting details is posted in the channel. A meeting attachment represents this object and includes the meeting details. The **id** property contains the ID of the meeting, and the **content** property includes details about the meeting organizer and the Exchange ID of the meeting. You can use the Exchange ID to look up the meeting by using the calendar APIs. The **contentType** property is set to `meetingReference` for meeting attachments.

The following example shows the schema for an adaptive card attachment.

```json
    "attachments": [
        {
            "id": "1628156567881",
            "contentType": "meetingReference",
            "contentUrl": null,
            "content": "{\"exchangeId\":\"AAMkAGU2NzgzNDQ3LWFkMTctNGY2MC05ZjM1LWFkOTYxZWZhYTY2MgBGAAAAAADFwPNVvpzXRqmCO5F6qAKtBwB89fWKTP8MSaPLNsJWtozvAAAAAAENAAB89fWKTP8MSaPLNsJWtozvAAFg-8IoAAA=\",\"organizerId\":\"8ea0e38b-efb3-4757-924a-5f94061cf8c2\"}",
            "name": "Testing channel meeting",
            "thumbnailUrl": null
        }
    ],
```

#### message attachment

An [attachment](/graph/api/resources/chatmessageattachment) object contains a message when a [chat](/graph/api/resources/chat) includes a reply to a specific message. For message attachments, the **id** property contains the ID of the message. The **content** property contains more details about the message; for example, the message preview text and sender. For message attachments, the **contentType** property is set to `messageReference`.

The following example shows the schema for a message attachment.
```json
    "attachments": [
        {
            "id": "1622853091207",
            "contentType": "messageReference",
            "contentUrl": null,
            "content": "{\"messageId\":\"1622853091207\",\"messagePreview\":\"Testing unread read status\",\"messageSender\":{\"application\":null,\"device\":null,\"user\":{\"userIdentityType\":\"aadUser\",\"id\":\"8ea0e38b-efb3-4757-924a-5f94061cf8c2\",\"displayName\":\"Alex\"}}}",
            "name": null,
            "thumbnailUrl": null
        }
    ],
```

### body

The **body** property of a **chatMessage** object represents the body of the message. The **body** property can refer to other elements in the schema such as mentions or attachments. The contents can be `text` or `html`, as specified by the **contentType** property of the [itemBody](/graph/api/resources/itembody) resource type.

Teams supports more schema elements beyond the HTML specifications to support other elements like mentions. The **chatMessage** schema supports the following non-HTML elements:

- at - A reference to an [chatMessageMention](/graph/api/resources/chatmessagemention) that represents the details of a user, application, [channel](/graph/api/resources/channel?preserve-view=true), [team](/graph/api/resources/team), or [tag](/graph/api/resources/teamworktag) that is @mentioned.
- attachment - Represents the position of an attachment reference.
- systemEventMessage - When the **content** property of the **itemBody** resource is set to `<systemEventMessage/>`, the message represents a special event. For more information, see [Get system messages](/graph/system-messages).
- emoji - When body of the message contains an emoji, the `$"<emoji id="IdOfTheEmoji" alt="AlternateRepresentationOfEmoji" title="TitleOfEmoji"></emoji>"` element represents the properties of an emoji:
    - id - IThe D of the emoji.
    - alt - An alternate representation for the emoji; for example, Unicode.
    - title - A title for the emoji.

#### Example: chatMessage schema of a message with @mention for a team

```json
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">WebhookTesting</at>&nbsp;Hello team</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "WebhookTesting",
            "mentioned": {
                "application": null,
                "device": null,
                "user": null,
                "tag": null,
                "conversation": {
                    "id": "68a3e365-f7d9-4a56-b499-24332a9cc572",
                    "displayName": "WebhookTesting",
                    "conversationIdentityType": "team"
                }
            }
        }
    ],
```

#### Example of a message with attachment

```json
    "body": {
        "contentType": "html",
        "content": "Scheduled a meeting<attachment id=\"1628156567881\"></attachment>"
    },
    "attachments": [
        {
            "id": "1628156567881",
            "contentType": "meetingReference",
            "contentUrl": null,
            "content": "{\"exchangeId\":\"AAMkAGU2NzgzNDQ3LWFkMTctNGY2MC05ZjM1LWFkOTYxZWZhYTY2MgBGAAAAAADFwPNVvpzXRqmCO5F6qAKtBwB89fWKTP8MSaPLNsJWtozvAAAAAAENAAB89fWKTP8MSaPLNsJWtozvAAFg-8IoAAA=\",\"organizerId\":\"8ea0e38b-efb3-4757-924a-5f94061cf8c2\"}",
            "name": "Testing channel meeting",
            "thumbnailUrl": null
        }
    ],
```

#### Example of a message with system event in it

```json
    "body": {
        "contentType": "html",
        "content": "<systemEventMessage/>"
    },
    "channelIdentity": {
        "teamId": "68a3e365-f7d9-4a56-b499-24332a9cc572",
        "channelId": "19:0b50940236084d258c97b21bd01917b0@thread.skype"
    },
    "attachments": [],
    "mentions": [],
    "reactions": [],
    "eventDetail": {
        "@odata.type": "#microsoft.graph.conversationMemberRoleUpdatedEventMessageDetail",
        "conversationMemberRoles": [],
        "conversationMemberUser": {
            "id": "c4aefc8e-f890-4aa6-b586-6cce899ff7f8",
            "displayName": null,
            "userIdentityType": "aadUser"
        },
        "initiator": {
            "application": null,
            "device": null,
            "user": {
                "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                "displayName": null,
                "userIdentityType": "aadUser"
            }
        }
    }
```

#### Example of a message with emoji in it

```json
{
    "body": {
        "contentType": "html",
        "content": "<p><emoji id=\"smile\" alt=\"🙂\" title=\"Smile\"></emoji></p>"
    }
}
```

### channelIdentity

If [chatMessage](/graph/api/resources/chatmessage?preserve-view=true) was sent in a [channel](/graph/api/resources/channel), `channelIdentity` represents the details about the channel. This includes ID of the [channel](/graph/api/resources/channel) and ID of the [team](/graph/api/resources/team). This property is read-only.

Example of `channelIdentity` in a message

```json
    "channelIdentity": {
        "teamId": "68a3e365-f7d9-4a56-b499-24332a9cc572",
        "channelId": "19:0b50940236084d258c97b21bd01917b0@thread.skype"
    },
```

### chatId

If [chatMessage](/graph/api/resources/chatmessage?preserve-view=true) was sent in a [chat](/graph/api/resources/chat), `chatId` represents the ID of the chat in which message was sent. This property is read-only.

Example of `chatId` in a message

```json
"chatId": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
```

### createdDateTime

`createdDateTime` represents the time when the message was created on the server. This timestamp might be different than when the message was sent by the caller. Server records only server side timestamp. This property is read-only, however it can be written when [importing messages from an external system](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

### deletedDateTime

If [chatMessage](/graph/api/resources/chatmessage) was deleted, `deletedDateTime` represents the time of deletion for the message. This property is read-only.

> **Note:** Deleted messages are not always returned by all the APIs. [Change notifications](/graph/teams-changenotifications-chatmessage) always return deleted message notifications if subscription includes `deleted` change type.

### etag

`etag` represents the version of the message. Any changes to message (including reactions, edits etc.) change the `etag` of the message. This property is read-only.

### eventDetail

If present, represents details of an event that happened in a [chat](/graph/api/resources/chat), a [channel](/graph/api/resources/channel), or a [team](/graph/api/resources/team), for example, adding new members. For event messages, the messageType property is set to `systemEventMessage`. You can read more about system events [here](/graph/system-messages).

### from

Represents the sender of the message. Microsoft Teams supports various senders.

- Azure AD users - Users who have a valid Azure AD user. This includes [Azure AD guests](/azure/active-directory/external-identities/what-is-b2b) and [native federation](/microsoftteams/manage-external-access)

    Following example shows the `from` element for a message sent by Azure AD user
    ```json
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Alex Wilber",
            "userIdentityType": "aadUser"
        }
    },
    ```
- Anonymous guests - Users who join a meeting using join link. These users provide a display name when joining meeting. They have no persistent identity in Microsoft 365.
    
    Following example shows the `from` element for a message sent by an anonymous guest
    ```json
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "8578568e393e4ffe8763e0b7c3da01fe",
            "displayName": "Anon (Guest)",
            "userIdentityType": "anonymousGuest"
        }
    },
    ```

- Personal Microsoft account users - Users using their personal Microsoft account to sign-in into Microsoft Teams

    Following example shows the `from` element for a message sent by anonymous guest

    ```json
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "d78f5bc88c39f6b8",
            "displayName": "TFL 1017",
            "userIdentityType": "personalMicrosoftAccountUser"
        }
    },
    ```
- Skype users - Skype (for consumer) users. You can learn more about this interop [here](/microsoftteams/teams-skype-interop)
    
    Following example shows the `from` element for a message sent by anonymous guest

    ```json
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "alex1122",
            "displayName": "Alex",
            "userIdentityType": "skypeUser"
        }
    },
    ```
- Skype for business on-premises users - Users using Skype For Business on-premises offering. You learn more about this [here](/microsoftteams/teams-and-skypeforbusiness-coexistence-and-interoperability)

     Following example shows the `from` element for a message sent by anonymous guest

    ```json
    "from": {
        "application": null,
        "device": null,
        "user": {
            "id": "b0eddfe2-659b-437d-b289-cf55c8b3bb1d",
            "displayName": "Alex",
            "userIdentityType": "onPremiseAadUser"
        }
    },
    ```
- Bots - Bots using [Microsoft Bot Framework](/azure/bot-service/?view=azure-bot-service-4.0&preserve-view=true) to write conversational bots

    Following example shows the `from` element for a message sent by bot

    ```json
    "from": {
        "device": null,
        "user": null,
        "application": {
            "id": "358f0194-6b0e-4dd3-af35-c24fe8a9ec87",
            "displayName": "Flow",
            "applicationIdentityType": "bot"
        }
    }
    ```
- Outgoing webhooks - Outgoing webhooks allow developers to build a low cost solution, which is in some respects similar to bots. You can read more about outgoing webhooks [here](/microsoftteams/platform/webhooks-and-connectors/how-to/add-outgoing-webhook)

    Following example shows the `from` element for a message sent by bot

    ```json
    "from": {
        "device": null,
        "user": null,
        "application": {
            "id": "22e50a9b-80cc-4eab-a092-ce64796d28d7",
            "displayName": "Custom bot",
            "applicationIdentityType": "outgoingWebhook"
        }
    }
    ```
- Office 365 connectors - Office 365 connectors allow posting one way message to Microsoft Teams. You can learn more about this integration [here](/microsoftteams/platform/webhooks-and-connectors/how-to/connectors-creating)
    
    Following example shows the `from` element for a message from Office 365 connector

    ```json
    "from": {
        "device": null,
        "user": null,
        "application": {
            "id": "4c6cfc6e-cf78-44e8-87fd-bbb0efcad6a2",
            "displayName": "Bing News",
            "applicationIdentityType": "office365Connector"
        }
    }
    ```

- Email - Microsoft Teams allows sending emails to channels. When the user isn't known (part of the tenant or identity isn't known), the identity of sender is shown as email user with details of the email used to send the message. Following example shows the `from` element for a message sent from an email user

    ```json
    "from": {
            "application": null,
            "device": null,
            "user": {
                "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                "id": "testemailuser@outlook.com",
                "displayName": "Test User",
                "userIdentityType": "emailUser"
            }
        }
    ```

- Azure Communication Services user - If a message is sent by an Azure Communication Services user, the identity details of the sender are represented in `from` field. Following is an example of the same

    ```json

    "from": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "8:acs:a04d09ad-aaa9-4e25-90de-475594b0fb52_00000006-96d3-711c-6a0b-343a0d000eb4",
            "displayName": null,
            "userIdentityType": "azureCommunicationServicesUser"
        }
    }
    ```

This property is read-only, however it can be written when [importing messages from an external system](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

> **Note:** Display name isn't always present

### id

Unique ID representing the message. This property is read-only.

> **Note:** Id is unique only under a specific scope i.e. chat or a channel. Different messages across chats and channels might have same Id.

### importance

Represents importance of the message. Possible values are

- normal
- high
- urgent

Example of a message with importance set to high

```json
"importance": "high",
```

### lastEditedDateTime

Represents the timestamp when the message was edited by the user. This is represented in Microsoft Teams UI with `Edited` flag, `null` if the message has never need edited.

### lastModifiedDateTime

Represents the timestamp when the message was last modified. This includes changes like reactions. `eTag` and `lastModifiedDateTime` both change together.

### mentions

Represents users, applications (bots, webhooks etc.), channels, teams, or tags being @mentioned.

#### Example of a message with @mention for another user

```json
    "body": {
        "contentType": "html",
        "content": "<div><div><div><div><at id=\"0\">Alex</at>&nbsp;Test123</div></div></div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "Alex",
            "mentioned": {
                "application": null,
                "device": null,
                "conversation": null,
                "tag": null,
                "user": {
                    "id": "c27c1b19-3904-4822-9813-4f6bdaab2eae",
                    "displayName": "Alex",
                    "userIdentityType": "aadUser"
                }
            }
        }
    ],
```

#### Example of a message with @mention for a bot

```json
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">Power Automate</at> Learn more&nbsp;</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "Power Automate",
            "mentioned": {
                "device": null,
                "user": null,
                "conversation": null,
                "tag": null,
                "application": {
                    "id": "358f0194-6b0e-4dd3-af35-c24fe8a9ec87",
                    "displayName": "Power Automate",
                    "applicationIdentityType": "bot"
                }
            }
        }
    ],
```

#### Example of a message with @mention for a team

```json
    "body": {
        "contentType": "html",
        "content": "<div><div><at id=\"0\">WebhookTesting</at>&nbsp;Hello team</div></div>"
    },
    "mentions": [
        {
            "id": 0,
            "mentionText": "WebhookTesting",
            "mentioned": {
                "application": null,
                "device": null,
                "user": null,
                "tag": null,
                "conversation": {
                    "id": "68a3e365-f7d9-4a56-b499-24332a9cc572",
                    "displayName": "WebhookTesting",
                    "conversationIdentityType": "team"
                }
            }
        }
    ],
```

> **Note:** @mentions can also appear inside cards

### messageType

Represents the type of message. The values in use are 

- message - Representing messages sent by users, applications etc.
- systemEventMessage - Represents messages sent by Microsoft Teams with details about various events like adding members, deleting channels etc. You can read more about system events [here](/graph/system-messages).

Other values not used right now

- typing
- chatEvent

### onBehalfOf

User attribution of the message when bot sends a message on behalf of a user. You can read more about user attribution [here](/microsoftteams/platform/messaging-extensions/how-to/action-commands/respond-to-task-module-submit?tabs=dotnet%2Cdotnet-1#user-attribution-for-bots-messages).

Example of a message sent by a bot on behalf of a user

```json
"from": {
        "device": null,
        "user": null,
        "application": {
            "id": "8a34cb8d-65dc-44e2-8375-a2261d1f2a4b",
            "displayName": "PolicyMaker",
            "applicationIdentityType": "bot"
        }
    },
    "onBehalfOf": {
        "application": null,
        "device": null,
        "user": {
            "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
            "displayName": "Alex Wilber",
            "userIdentityType": "aadUser"
        }
    },
```

### policyViolation

If the message violated any data loss prevention (DLP) policies set by the tenant, a message PATCH can be invoked with the details of the policy being violated. This hides the message from the Microsoft Teams UI. This element represents the details of the policy being violated, along with the action.

Example of a message blocked due to policy

```json
    "body": {
        "contentType": "text",
        "content": ""
    },
    "policyViolation": {
        "dlpAction": "blockAccess",
        "justificationText": null,
        "userAction": "none",
        "verdictDetails": "none",
        "policyTip": null
    },
```

### reactions

Represents reactions from other users on this message. This includes reactions such as likes etc. Each element represents information about the reaction and the user who reacted.

Example of a message with reaction in it

```json
    "reactions": [
        {
            "reactionType": "like",
            "createdDateTime": "2022-01-18T23:41:57.573Z",
            "user": {
                "application": null,
                "device": null,
                "user": {
                    "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            }
        }
    ]
```

> **Note:** Display name isn't always present

### replyToId

Represents the ID of the message this message is a reply to in a reply chain. This property is only set for channel messages. This property is read-only.

> **Note:** For replying to messages in a chat, message reference is used. Additionally, chats allowing multiple of message reference elements.

### subject

Subject of the message. This is valid only for messages sent in channel.

### webUrl

Url pointing to the message in Microsoft Teams UI. This url can be used to open the message directly in Microsoft Teams UI in a browser.

## Choosing the right API for your scenarios

Choosing the right API is essential for getting the best experience. Additionally, using the right set of APIs allows you to fetch data without hitting throttling.

Messaging APIs in Microsoft Teams are divided in three major categories.

- APIs focused on the way Microsoft Teams UI work. Any changes are instantly visible
- Slow sync APIs focused on users and teams. Any changes can take up to 24 hours to be available
- Change notifications based APIs to get notified in real time

### Microsoft Teams UI aligned APIs

These APIs allow you to get older methods similar to how Microsoft Teams UI does. These APIs are built to allow 'once in a while' sync to get messages in a specific context. These APIs are highly performant and any changes (messages sent, edited, or deleted) are instantly visible through these APIs.

Following APIs belong to this set.

- [List messages in a chat](/graph/api/chat-list-messages)
- [List messages in a channel](/graph/api/channel-list-messages)
- [List replies to a message in a channel](/graph/api/chatmessage-list-replies)
- [Send message in a chat](/graph/api/chat-post-messages)
- [Send message in a channel](/graph/api/chatmessage-post)
- [Reply to a message in a channel](/graph/api/chatmessage-post-replies)
- [List hostedContents associated with a message](/graph/api/chatmessage-list-hostedcontents)
- [Get hostedContent associated with a message](/graph/api/chatmessagehostedcontent-get)

Additionally, following APIs act along with the APIs above to serve specific scenarios regarding fetching specific instances or changing order of traversal.

- [Get a message or reply in a channel or a chat](/graph/api/chatmessage-get)
- [Continuous sync using /delta for channel messages](/graph/api/chatmessage-delta)

### APIs for exporting data from Microsoft Teams

These APIs typically work at a higher granularity than UI aligned APIs. These APIs focus on allowing fetching large amount of data. It might take a while (upto 24 hours in certain cases) for data to get synced and being available through these APIs.

- [List messages across a user's chats](/graph/api/chats-getallmessages)
- [List messages across channels in a team](/graph/api/channel-getallmessages)

### Real-time APIs

Real-time APIs allow caller to get notified as soon as a change is made (message sent, edited, deleted etc.). These APIs are suitable for real time applications like rendering messages outside of Microsoft Teams UI. Additionally, these APIs allow creating subscriptions and thus allow receiving large amount of data without hitting throttling. For more information, see [this document](/graph/teams-changenotifications-chatmessage).

