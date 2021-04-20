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

For distinguishing the two ways of creating a **Message**: (1) JSON metadata (2) MIME content, we are using the `Content-Type` header in the request headers.

1. If `Content-Type: application/json`, JSON metadata is being sent in the request body.
2. If `Content-Type: text/plain`, MIME content is being sent in the request body.

We use `text/plain` because there is no designated MIME type for the generic MIME message format. Currently the existing `GET /messages/{MESSAGE_ID}/$value` endpoint for retrieving MIME content response header is `Content-Type: text/plain`.

For updating a message with MIME content, we send a PUT request to the `/$value` endpoint on a Message entity endpoint with our MIME content in the request body, with same `Content-Type: text/plain` in the request headers.

## Properties
For sending in MIME content for our message-related actions, we are adding an optional parameter of type `Edm.String` called `mimeContent`. This `mimeContent` string contains the Base64Binary-enconded format of the MIME content text.

## Use cases
| Use cases | Resources |
| --------- | --------- |
| Create a message draft | [createMessage](../api-referece/api/user-post-messages) |
| Update a message draft| [updateMessage](../api-reference/api/message-update) |
| Send an email | [sendMail](../api-reference/api/message-send) |
| Reply to a message | [reply](../api-reference/api/message-reply) |
| Create a draft of a reply to a message | [createReply](../api-reference/api/message-createreply) |
| ReplyAll to a message | [replyAll](../api-reference/api/message-replyall) | 
| Create a draft of a replyAll to a message | [createReplyAll](../api-reference/api/message-createreplyall) |
| Forward a message | [forward](../api-reference/api/message-forward) |
| Create a draft of a forward to a message | [createForward](../api-reference/api/message-createforward) | 

## Error conditions and messages

|Scenario|Method|Code|Message|
|--------|------|----|-------|
| MIME content malformed, missing | POST, PUT | 400 | MIME content does not contain all required information, malformed formatting, or empty. |


