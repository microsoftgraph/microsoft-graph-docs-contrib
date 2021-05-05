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
> * Add S/MIME digital signatures and encrypted contents to emails only in their MIME message format.

Visit the documentation about [getting MIME content of a message](../concepts/outlook-get-mime-message.md) for more information about MIME.

## Details
There are two supported formarts for creating a [message](/graph/api-reference/v1.0/resources/message.md): (1) JSON metadata (2) MIME content. Specify the selected format in the request header.

1. Specify `Content-Type: application/json` to use JSON format in the request body.
2. Specify `Content-Type: text/plain` to use MIME format in the request body.

When specifying the body in MIME format, provide the MIME content as **a base64-encoded string** in the request body. Do not include parameters.

## Use cases
| Use cases | Resources |
| ------| ----- |
| Create a message draft | [createMessage](/graph/api/user-post-messages.md) |
| Send an email | [sendMail](/graph/api/user-sendmail.md) |
| Reply to a message | [reply](/graph/api/message-reply.md) |
| Create a draft to reply to a message | [createReply](/graph/api/message-createreply.md) |
| ReplyAll to a message | [replyAll](/graph/api/message-replyall.md) | 
| Create a draft to replyAll to a message | [createReplyAll](/graph/api-reference/api/message-createreplyall.md) |
| Forward a message | [forward](/graph/api-reference/api/message-forward.md) |
| Create a draft to forward a message | [createForward](/graph/api-reference/api/message-createforward.md) | 

## Error conditions and messages

|Scenario|Method|Code|Message|
|--------|------|----|-------|
| MIME content malformed, missing | POST, PUT | 400 | Invalid base64 string for MIME content. |


