---
title: "Sending emails with MIME content"
description: "Email clients have the ability to send emails through Exchange in a MIME message format."
author: "isvargasmsft"
localization_priority: Priority
ms.prod: "outlook"
---

# Send emails with MIME content

## Overview
Email clients have the ability to send emails through Exchange in a MIME message format and communicate across multiple email platforms.

Supported MIME features:
- Send emails in MIME format: message body contents, attachments and sender/recipient information (CC and BCC).
- Send replies, reply-alls and forwarding emails.
- Update drafts in Exchange with MIME content: message body, attachments and recipient information.
- Attach S/MIME signatures to emails.
- S/MIME encrypted email contents.

> [!IMPORTANT]
> * S/MIME provides two key features: digital signatures for verification of sender and email contents, and message encryption for preventing third parties from viewing email contents.
> * S/MIME digital signatures and encrypted contents can only be added to email in their MIME message format.

Visit the documentation about [getting MIME content of a message](../concepts/outlook-get-mime-message.md) for more information about MIME.

## Details and schema changes
We are making the [message](/graph/api/resources/message.md) entity streamable so that MIME content can be sent as a media stream payload. This follows the OData V4.0 specification, [Section 11.4.7.1](http://docs.oasis-open.org/odata/odata/v4.0/os/part1-protocol/odata-v4.0-os-part1-protocol.html#_Toc372793727) for creating media entities.

Adding `HasStream=True` to **Message**

```xml
<EntityType Name="message" BaseType="graph.outlookItem" OpenType="true" HasStream="true">
    <Property Name="receivedDateTime" Type="Edm.DateTimeOffset"/>
    <Property Name="sentDateTime" Type="Edm.DateTimeOffset"/>
    <Property Name="hasAttachments" Type="Edm.Boolean"/>
    <Property Name="internetMessageId" Type="Edm.String"/>
    ...
</EntityType>
```

For distinguishing the two ways of creating a **Message**: (1) JSON metadata (2) MIME content, we are using the `Content-Type` header in the request headers.

1. If `Content-Type: application/json`, JSON metadata is being sent in the request body.
2. If `Content-Type: text/plain`, MIME content is being sent in the request body.

We use `text/plain` because there is no designated MIME type for the generic MIME message format. Currently the existing `GET /messages/{MESSAGE_ID}/$value` endpoint for retrieving MIME content response header is `Content-Type: text/plain`.

For updating a message with MIME content, we send a PUT request to the `/$value` endpoint on a Message entity endpoint with our MIME content in the request body, with same `Content-Type: text/plain` in the request headers.


## Properties
For sending in MIME content for our message-related actions, we are adding an optional parameter of type `Edm.String` called `mimeContent`. This `mimeContent` string contains the Base64Binary-enconded format of the MIME content text.

## Actions
| Action | Parameter       | Type           | Description     | Required  |
| -------------- | -------------- | -------------- | --------------- | --------- |
| sendMail | `message` | `graph.Message` | Message object of the message being sent | No |
| sendMail | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message being sent | No |
| reply | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message being sent | No |
| createReply | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message draft | No |
| replyAll | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message being sent | No |
| craeteReplyAll | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message draft | No |
| forward | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message being forwarded | No |
| createForward | `mimeContent` | `Edm.String` | Base64Binary-encoded MIME content of the message draft | No |

## CSDL
SendMail

```xml
<Action Name="sendMail" IsBound="true">
    <Parameter Name="bindingParameter" Type="graph.user"/>
    <Parameter Name="Message" Type="graph.message" Nullable="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
    <Parameter Name="SaveToSentItems" Type="Edm.Boolean"/>
</Action>
```

Reply

```xml
<Action Name="reply" IsBound="true">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
</Action>
```

ReplyAll

```xml
<Action Name="replyAll" IsBound="true">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
</Action>
```

Forward

```xml
<Action Name="forward" IsBound="true">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="ToRecipients" Type="Collection(graph.recipient)"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
</Action>
```

CreateReply

```xml
<Action Name="createReply" IsBound="true" EntitySetPath="bindingParameter">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
    <ReturnType Type="graph.message"/>
</Action>
```

CreateReplyAll

```xml
<Action Name="createReplyAll" IsBound="true" EntitySetPath="bindingParameter">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
    <ReturnType Type="graph.message"/>
</Action>
```

CreateForward

```xml
<Action Name="createForward" IsBound="true" EntitySetPath="bindingParameter">
    <Parameter Name="bindingParameter" Type="graph.message"/>
    <Parameter Name="ToRecipients" Type="Collection(graph.recipient)"/>
    <Parameter Name="Message" Type="graph.message"/>
    <Parameter Name="Comment" Type="Edm.String" Unicode="false"/>
    <Parameter Name="MimeContent" Type="Edm.String"/>
    <ReturnType Type="graph.message"/>
</Action>
```

## Error conditions and messages

|Scenario|Method|Code|Message|
|--------|------|----|-------|
|Both `message` and `mimeContent` specified (actions only) | POST | 400 | Both message object and MIME content cannot be specified because they contain duplicate properties. Specify either 'MimeContent' or 'Message' in request body. |
| MIME content malformed, missing | POST, PUT | 400 | MIME content does not contain all required information, malformed formatting, or empty. |

### Error handling

If both the `message` parameter and `mimeContent` parameter is specified for any of the actions, we throw a HTTP 400 Bad Request error since the request contains duplicate properties that represent the Message being sent.

## Example REST operations

### Use case: Create a Message Draft

```mime
POST https://graph.microsoft.com/v1.0/me/messages
Content-type: text/plain

From: Karl <karl@contoso.com>
To: Adele <adele@contoso.com>
Message-Id: <v0214040cad6a13935723@contoso.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="---B2E888AE-DAC5-49DD-8670-579F610ADAF7";
Date: Thursday, 4 Jul 2020 09:43:14 -0800
Subject: Did you see last night’s game?
Precedence: bulk

---B2E888AE-DAC5-49DD-8670-579F610ADAF7
Content-Type: text/plain; charset="us-ascii"

They were awesome!

---B2E888AE-DAC5-49DD-8670-579F610ADAF7
Content-Type: text/html; charset="us-ascii"

<html><body><p>They were <b>awesome!</b></p></body></html>


HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('94447c6e-ea4c-494c-a9ed-d905e366c5cb')/messages/$entity",
    "@odata.etag":"W/\"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti\"",
    "id":"AAMkADNlNYjSAAA=",
    "createdDateTime":"2017-07-22T01:53:56Z",
    "lastModifiedDateTime":"2017-07-22T01:53:57Z",
    "changeKey":"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti",
    "receivedDateTime":"2017-07-22T01:53:57Z",
    "sentDateTime":"2017-07-22T01:53:57Z",
    "hasAttachments":false,
    "internetMessageId":"<MWHPR1301MB@MWHPR1301MB.namprd13.prod.outlook.com>",
    "subject":"Did you see last night's game?",
    "bodyPreview":"They were awesome!",
...
}
```

### Use case: Update a Message draft

```mime
PUT https://graph.microsoft.com/v1.0/me/messages/AAMkADVhODY4MWE1LTE0OTgtNDljMC1iOTcxLW/$value
Content-type: text/plain

From: Karl <karl@contoso.com>
To: Adele <adele@contoso.com>
Message-Id: <v0214040cad6a13935723@contoso.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="---B2E888AE-DAC5-49DD-8670-579F610ADAF7";
Date: Thursday, 4 Jul 2020 09:43:14 -0800
Subject: Did you see last night’s game?
Precedence: bulk

---B2E888AE-DAC5-49DD-8670-579F610ADAF7
Content-Type: text/plain; charset="us-ascii"

We almost won!

---B2E888AE-DAC5-49DD-8670-579F610ADAF7
Content-Type: text/html; charset="us-ascii"

<html><body><p>We almost won!</p></body></html>


HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('94447c6e-ea4c-494c-a9ed-d905e366c5cb')/messages/$entity",
    "@odata.etag":"W/\"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti\"",
    "id":"AAMkADNlNYjSAAA=",
    "createdDateTime":"2017-07-22T01:53:56Z",
    "lastModifiedDateTime":"2017-07-22T01:53:57Z",
    "changeKey":"CQAAABYAAABK4UfANE/UR5clSilZtIuWAAC1vdti",
    "receivedDateTime":"2017-07-22T01:53:57Z",
    "sentDateTime":"2017-07-22T01:53:57Z",
    "hasAttachments":false,
    "internetMessageId":"<MWHPR1301MB@MWHPR1301MB.namprd13.prod.outlook.com>",
    "subject":"Did you see last night's game?",
    "bodyPreview":"They were awesome!",
...
}
```

### Use case: SendMail

```json
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "mimeContent": "Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np...",
  "saveToSentItems": "false"
}

HTTP/1.1 202 Accepted
```

### Use case: Reply to a Message

```json
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/reply
Content-Type: application/json

{
  "mimeContent": "Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np..."
}

HTTP/1.1 202 Accepted
```

### Use case: ReplyAll to a Message

```json
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/replyAll
Content-Type: application/json

{
  "mimeContent": "Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np..."
}

HTTP/1.1 200 OK
```

### Use case: Forward to a Message

```json
POST https://graph.microsoft.com/v1.0/me/messages/AAMkADA1MTAAAAqldOAAA=/forward
Content-Type: application/json

{
  "mimeContent": "Q29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9wa2NzNy1taW1lOw0KCW5hbWU9c21pbWUucDdtOw0KCXNtaW1lLXR5cGU9ZW52ZWxvcGVkLWRhdGENCk1pbWUtVmVyc2lvbjogMS4wIChNYWMgT1MgWCBNYWlsIDEzLjAgXCgzNjAxLjAuMTBcKSkNClN1YmplY3Q6IFJlOiBUZXN0aW5nIFMvTUlNRQ0KQ29udGVudC1EaXNwb3Np..."
}

HTTP/1.1 200 OK
```



