---
title: "Working with Microsoft Teams messaging APIs in Microsoft Graph"
description: "Working with Microsoft Teams messaging"
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
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

Cards represent visual elements backed by a predefined schema. Teams supports the cards defined by the [Bot Framework](/azure/bot-service/rest-api/bot-framework-rest-connector-api-reference?view=azure-bot-service-4.0&preserve-view=true#attachment-object) in addition to the following card types:

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

The **chatMessage** schema supports the following non-HTML elements that Teams also supports:

- at - A reference to an [chatMessageMention](/graph/api/resources/chatmessagemention) that represents the details of a user, application, [channel](/graph/api/resources/channel?preserve-view=true), [team](/graph/api/resources/team), or [tag](/graph/api/resources/teamworktag) that is @mentioned.
- attachment - Represents the position of an attachment reference.
- systemEventMessage - When the **content** property of the **itemBody** resource is set to `<systemEventMessage/>`, the message represents a special event. For more information, see [Get system messages](/graph/system-messages).
- emoji - When the body of the message contains an emoji, the `$"<emoji id="IdOfTheEmoji" alt="AlternateRepresentationOfEmoji" title="TitleOfEmoji"></emoji>"` element represents the properties of an *emoji*:
    - id - The ID of the emoji.
    - alt - An alternate representation for the emoji; for example, Unicode.
    - title - A title for the emoji.
- customemoji - When the body of the message contains a custom emoji, the `$"<customemoji id=\"dGVzdHNjOzAtd3VzLWQyLTdiNWRkZGQ2ZGVjMDNkYzIwNTgxY2NkYTE1MmEyZTM4\" alt=\"testsc\" source=\"https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706638496169/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1jYW5hcnkuYXN5bmNndy50ZWFtcy5taWNyb3NvZnQuY29tL3YxL29iamVjdHMvMC13dXMtZDItN2I1ZGRkZDZkZWMwM2RjMjA1ODFjY2RhMTUyYTJlMzgvdmlld3MvaW1ndDJfYW5pbQ==/$value\"></customemoji>"` element represents the properties of a *customemoji*:
    - id - The ID of the custom emoji.
    - alt - An alternate representation for the custom emoji; for example, the name of the custom emoji.
    - source - The hosted content of the custom emoji associated with the message.

**Example: A message that @mentions a team**

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

**Example: A message with an attachment**

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

**Example: A message with a system event**

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

**Example: A message with an emoji**

```json
{
    "body": {
        "contentType": "html",
        "content": "<p><emoji id=\"smile\" alt=\"🙂\" title=\"Smile\"></emoji></p>"
    }
}
```

**Example: A message with a custom emoji**

>**Note:** Custom emojis are only available on the `/beta` endpoint.

```json
{
    "body": {
        "contentType": "html",
        "content": "<p><customemoji id=\"dGVzdHNjOzAtd3VzLWQyLTdiNWRkZGQ2ZGVjMDNkYzIwNTgxY2NkYTE1MmEyZTM4\" alt=\"testsc\" source=\"https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706638496169/hostedContents/aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1jYW5hcnkuYXN5bmNndy50ZWFtcy5taWNyb3NvZnQuY29tL3YxL29iamVjdHMvMC13dXMtZDItN2I1ZGRkZDZkZWMwM2RjMjA1ODFjY2RhMTUyYTJlMzgvdmlld3MvaW1ndDJfYW5pbQ==/$value\"></customemoji></p>"
    }
}
```

### channelIdentity

If a [chatMessage](/graph/api/resources/chatmessage) is sent in a [channel](/graph/api/resources/channel), the **channelIdentity** property contains details about the channel. This includes the ID of the [channel](/graph/api/resources/channel) and the [team](/graph/api/resources/team). This property is read-only.

The following example shows the schema for a **channelIdentity** in a message.

```json
    "channelIdentity": {
        "teamId": "68a3e365-f7d9-4a56-b499-24332a9cc572",
        "channelId": "19:0b50940236084d258c97b21bd01917b0@thread.skype"
    },
```

### chatId

If a [chatMessage](/graph/api/resources/chatmessage?preserve-view=true) is sent in a [chat](/graph/api/resources/chat), the **chatId** property contains the ID of the chat. This property is read-only.

The following example shows the schema for a **chatId**.

```json
"chatId": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
```

### createdDateTime

The **createdDateTime** property represents the time when the message was created on the server. This timestamp might be different than the time when the message was sent by the caller. The server only records the server-side timestamp. This property is read-only; however, it can be written when you [import messages from an external system](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

### deletedDateTime

If a [chatMessage](/graph/api/resources/chatmessage) is deleted, the **deletedDateTime** property contains the time that the message was deleted. This property is read-only.

> **Note:** Deleted messages are not always returned by all APIs. [Change notifications](/graph/teams-changenotifications-chatmessage) always return deleted message notifications if the **changeType** of the subscription includes `deleted`.

### etag

The **etag** property represents the version of the message. Any changes to the message (including reactions and edits) changes the **etag** value of the message. This property is read-only.

### eventDetail

If present, the **eventDetails** property represents details of an event that happened in a [chat](/graph/api/resources/chat), a [channel](/graph/api/resources/channel), or a [team](/graph/api/resources/team); for example, the addition of new members. For event messages, the **messageType** property of the **chatMessage** is set to `systemEventMessage`. For more information, see [Get system messages](/graph/system-messages).

### from

The **from** property represents the sender of the message. Microsoft Teams supports the following sender types.

- Entra ID users - Users who have a valid Entra ID. This includes [Entra External ID guests](/azure/active-directory/external-identities/what-is-b2b) and [external access](/microsoftteams/manage-external-access) users.

    The following example shows the **from** property for a message sent by an Entra ID user.
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
- Anonymous guests - Users who join a meeting by using a join link. These users provide a display name when they join the meeting. They have no persistent identity in Microsoft 365.
    
    The following example shows the **from** property for a message sent by an anonymous guest.
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

- Personal Microsoft account users - Users who use their personal Microsoft account to sign in to Teams.

    The following example shows the **from** property for a message sent by an anonymous guest.

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
- Skype users - Skype (for consumer) users. For more information, see [Teams and Skype interoperability](/microsoftteams/teams-skype-interop).
    
    The following example shows the **from** property for a message sent by a Skype user.

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
- Skype for business on-premises users - Users who use the Skype For Business on-premises offering. For more information, see [Teams and Skype for Business coexistence and interoperability](/microsoftteams/teams-and-skypeforbusiness-coexistence-and-interoperability).

     The following example shows the **from** property for a message sent by a Skype for business on-premises user.

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
- Bots - Conversational bots created via the [Microsoft Bot Framework](/azure/bot-service/?view=azure-bot-service-4.0&preserve-view=true).

    The following example shows the **from** property for a message sent by a bot.

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
- Outgoing webhooks - Outgoing webhooks allow developers to build a low-cost solution that is similar to bots. For more information, see [Create outgoing webhooks](/microsoftteams/platform/webhooks-and-connectors/how-to/add-outgoing-webhook).

    The following example shows the **from** property for a message sent by a bot.

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
- Connectors for Microsoft 365 groups - Connectors allow posting one-way message to Teams. For more information, see [Create connectors for Microsoft 365 Groups](/microsoftteams/platform/webhooks-and-connectors/how-to/connectors-creating).
    
    The following example shows the **from** property for a message from an Office 365 connector.

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

- Email - Teams allows emails to be sent to channels. When the user isn't known, the identity of the sender is shown as an email user with the details of the email used to send the message.

     The following example shows the **from** property for a message sent from an email user.

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

- Azure Communication Services user - If a message is sent by an Azure Communication Services user, the identity details of the sender are represented in the **from** field.

    The following example shows the **from** property of an email send from an Azure Communication Services user.

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

This property is read-only; however, you can write to it when you [import messages from an external system](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

> **Note:** The display name isn't always present.

### id

The **id** property contains a unique ID that represents the message. This property is read-only.

> **Note:** The ID is unique only within a specific scope, such as a chat or channel. Different messages across chats and channels might have the same ID.

### importance

The **importance** property represents the importance of the message. The following are the possible values:

- normal
- high
- urgent

The following example shows a message with the importance set to high.

```json
"importance": "high",
```

### lastEditedDateTime

The **lastEditedDateTime** property represents the timestamp when the message was edited by the user. This is represented in the Teams UI with the `Edited` flag. It is set to `null` if the message has never been edited.

### lastModifiedDateTime

The **lastModifiedDateTime** property represents the timestamp when the message was last modified. This includes changes such as reactions. Both the **eTag** and **lastModifiedDateTime** properties when a message is modified.

### mentions

The **mentions** property represents users, applications (bots, webhooks), channels, teams, or tags that are @mentioned.

**Example: A message that @mentions another user**

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

**Example: A message that @mentions a bot**

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

**Example: A message that @mentions a team**

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

> **Note:** @mentions can also appear inside cards.

### messageType

The **messageType** property represents the type of message. The following are the possible values: 

- message - Represents messages sent by users and applications.
- systemEventMessage - Represents messages sent by Teams with details about various events such as adding members or deleting channels. For more information, see [Get system messages](/graph/system-messages).

The following values are not currently in use:

- typing
- chatEvent

### onBehalfOf

The **onBehalfOf** property represents the user attribution for messages sent by a bot on behalf of a user. For more information, see [User attribution for bots messages](/microsoftteams/platform/messaging-extensions/how-to/action-commands/respond-to-task-module-submit?tabs=dotnet%2Cdotnet-1#user-attribution-for-bots-messages).

The following example shows a message sent by a bot on behalf of a user.

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

If a message violates any data loss prevention (DLP) policies set by the tenant, a message PATCH can be invoked with the details of the policy that was violated. This hides the message from the Teams UI. The **policyViolation** property represents the details of the policy that was violated, along with the action.

The following example shows a message that was blocked due to policy.

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

The **reactions** property represents reactions from other users on the message, such as likes. Each element represents information about the reaction and the user who reacted.

The following example shows a message with reactions.

>**Note:** The display name isn't always present.

```json
{
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
}
```

The following example shows a message with a custom reaction.

>**Note:**
> * Custom reactions are only available on the `/beta` endpoint.
> * The display name isn't always present.

```json
{
    "reactions": [
        {
            "reactionType": "custom",
            "reactionContentUrl": "https://graph.microsoft.com/beta/chats/19:bcf84b15c2994a909770f7d05bc4fe16@thread.v2/messages/1706763669648/hostedContents/aWQ9MC13dXMtZDExLTc3ZmI2NmY4MTMwMGI2OGEzYzRkOWUyNmU1YTc5ZmMyLHR5cGU9MSx1cmw9/$value",
            "createdDateTime": "2024-02-14T22:07:02.288Z",
            "user": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "28c10244-4bad-4fda-993c-f332faef94f0",
                    "displayName": null,
                    "userIdentityType": "aadUser"
                }
            }
        }
    ]
}
```

### replyToId

The **replyToId** property represents the ID of the message that a message is a reply to in a reply chain. This property is only set for channel messages. This property is read-only.

> **Note:** For replying to messages in a chat, message reference is used.

### subject

The **subject** property contains the subject of the message. This is valid only for messages sent in a channel.

### webUrl

The **webUrl** property contains a URL that points to the message in the Teams UI. This URL opens the message directly in the Teams UI in a browser.

## Choosing the right API for your scenario

Choosing the right API is essential for you to build the best possible experience. Using the right set of APIs also ensure that you to fetch data without hitting throttling.

The messaging APIs in Microsoft Graph fall into three:

- APIs that map to the Teams UI. Any changes are immediately visible.
- APIs that export data focused on users and teams. Any changes can take up to 24 hours to be available.
- Change notifications-based APIs to get notified in real time.

### Teams UI-aligned APIs

APIs that align to the Teams UI work in a similar way to how the Teams UI works. These APIs are built for _once in a while_ syncs to get messages in a specific context. These APIs are highly performant and any changes (messages sent, edited, or deleted) are immediately visible.

The following are Teams UI-aligned APIs:

- [List messages in a chat](/graph/api/chat-list-messages)
- [List messages in a channel](/graph/api/channel-list-messages)
- [List replies to a message in a channel](/graph/api/chatmessage-list-replies)
- [Send message in a chat](/graph/api/chat-post-messages)
- [Send message in a channel](/graph/api/chatmessage-post)
- [Reply to a message in a channel](/graph/api/chatmessage-post-replies)
- [List hostedContents associated with a message](/graph/api/chatmessage-list-hostedcontents)
- [Get hostedContent associated with a message](/graph/api/chatmessagehostedcontent-get)

In addition, the following APIs act along with these APIs to serve specific scenarios, such as fetching specific instances or changing the order of traversal.

- [Get a message or reply in a channel or a chat](/graph/api/chatmessage-get)
- [Continuous sync using /delta for channel messages](/graph/api/chatmessage-delta)

### APIs for exporting data from Teams

APIs that export data typically work at a higher granularity than UI-aligned APIs. These APIs focus on allowing the fetching of large amount of data. It might take a while (up to 24 hours in certain cases) for data to sync and become available through these APIs.

The following APIs fall into this category:

- [List messages across a user's chats](/graph/api/chats-getallmessages)
- [List messages across channels in a team](/graph/api/channel-getallmessages)

### Real-time APIs

Real-time APIs allow a caller to get notified as soon as a change is made (message sent, edited, deleted, and so on). These APIs are suitable for real-time applications like rendering messages outside of the Teams UI. In addition, these APIs allow for the creation of subscriptions and therefore the reception of large amount of data without hitting throttling. For more information, see [Change notifications for channles and chats](/graph/teams-changenotifications-chatmessage).

