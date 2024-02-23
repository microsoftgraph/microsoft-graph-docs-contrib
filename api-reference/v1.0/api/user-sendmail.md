---
title: "user: sendMail"
description: "Send the message specified in the request body using either JSON or MIME format."
author: "SuryaLashmiS"
ms.localizationpriority: high
ms.prod: "outlook"
doc_type: apiPageType
---

<!-- markdownlint-disable MD001 MD022 MD024 MD033 MD051 -->

# user: sendMail

Namespace: microsoft.graph

Send the message specified in the request body using either JSON or MIME format.

When using JSON format, you can include a [file attachment](../resources/fileattachment.md) in the same **sendMail** action call.

When using MIME format:

- Provide the applicable [Internet message headers](https://tools.ietf.org/html/rfc2076) and the [MIME content](https://tools.ietf.org/html/rfc2045), all encoded in **base64** format in the request body.
- Add any attachments and S/MIME properties to the MIME content.

This method saves the message in the **Sent Items** folder.

Alternatively, [create a draft message](../api/user-post-messages.md) to send later.

To learn more about the steps involved in the backend before a mail is delivered to recipients, see [here](/graph/outlook-things-to-know-about-send-mail).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_sendmail" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-sendmail-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/sendMail
POST /users/{id | userPrincipalName}/sendMail
```

## Request headers

| Name          | Type   | Description                                                                                                                              |
|:--------------|:-------|:-----------------------------------------------------------------------------------------------------------------------------------------|
| Authorization | string | Bearer {token}. Required.                                                                                                                |
| Content-Type  | string | Nature of the data in the body of an entity. Required. <br/> Use `application/json` for a JSON object and `text/plain` for MIME content. |

## Request body

When using JSON format, provide a JSON object with the following parameters.

| Parameter       | Type                               | Description |
|:----------------|:-----------------------------------|:------------|
| message         | [Message](../resources/message.md) | The message to send. Required. |
| saveToSentItems | Boolean                            | Indicates whether to save the message in Sent Items. Specify it only if the parameter is false; default is true. Optional. |

When specifying the body in MIME format, provide the MIME content as **a base64-encoded string** in the request body.

## Response

If successful, this method returns `202 Accepted` response code. It doesn't return anything in the response body.

> **Note**: A `202 Accepted` response code indicates that the request has been accepted; however, it does not indicate that the request processing has completed. Delivery of the message is subject to [Exchange Online limitations and throttling](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits).

If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: "Invalid base64 string for MIME content."

## Examples

### Example 1: Send a new email using JSON format

##### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "user_sendmail"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "frannis@contoso.com"
        }
      }
    ],
    "ccRecipients": [
      {
        "emailAddress": {
          "address": "danas@contoso.com"
        }
      }
    ]
  },
  "saveToSentItems": "false"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-sendmail-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-sendmail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-sendmail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-sendmail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-sendmail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

### Example 2: Create a message with custom Internet message headers and send the message

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "user_sendmail_with_headers"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "9/9/2018: concert",
    "body": {
      "contentType": "HTML",
      "content": "The group represents Nevada."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "AlexW@contoso.com"
        }
      }
    ],
    "internetMessageHeaders": [
      {
        "name": "x-custom-header-group-name",
        "value": "Nevada"
      },
      {
        "name": "x-custom-header-group-id",
        "value": "NV001"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-with-headers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-sendmail-with-headers-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-sendmail-with-headers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-with-headers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-with-headers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-sendmail-with-headers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-sendmail-with-headers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-sendmail-with-headers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

### Example 3: Create a message with a file attachment and send the message

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_sendmail_with_attachment"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "meganb@contoso.com"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "#microsoft.graph.fileAttachment",
        "name": "attachment.txt",
        "contentType": "text/plain",
        "contentBytes": "SGVsbG8gV29ybGQh"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-sendmail-with-attachment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-sendmail-with-attachment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-sendmail-with-attachment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-sendmail-with-attachment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-sendmail-with-attachment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-sendmail-with-attachment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-sendmail-with-attachment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-sendmail-with-attachment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

### Example 4: Send a new message using MIME format

#### Request

<!-- {
  "blockType": "ignored",
  "name": "message_send_mime_beta"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: text/plain

RnJvbTogQWRlbGUgVmFuY2UgPEFkZWxlVkBjb250b3NvLmNvbT4KVG86IEFsZXggV2lsYmVyIDxB
bGV4V0Bjb250b3NvLmNvbT4KU3ViamVjdDpUZXN0IE1lc3NhZ2UKQ29udGVudC1UeXBlOiBtdWx0
aXBhcnQvbWl4ZWQ7Cglib3VuZGFyeT0iXzAwNF9UWVpQUjA0TUI2OTgxNzNGRDAwMjE1MkQ1QURC
OEZCNDdDOEJDQVRZWlBSMDRNQjY5ODFhcGNwXyIKTUlNRS1WZXJzaW9uOiAxLjAKCi0tXzAwNF9U
WVpQUjA0TUI2OTgxNzNGRDAwMjE1MkQ1QURCOEZCNDdDOEJDQVRZWlBSMDRNQjY5ODFhcGNwXwpD
b250ZW50LVR5cGU6IG11bHRpcGFydC9hbHRlcm5hdGl2ZTsKCWJvdW5kYXJ5PSJfMDAwX1RZWlBS
MDRNQjY5ODE3M0ZEMDAyMTUyRDVBREI4RkI0N0M4QkNBVFlaUFIwNE1CNjk4MWFwY3BfIgoKLS1f
MDAwX1RZWlBSMDRNQjY5ODE3M0ZEMDAyMTUyRDVBREI4RkI0N0M4QkNBVFlaUFIwNE1CNjk4MWFw
Y3BfCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD0iaXNvLTg4NTktMSIKQ29udGVu
dC1UcmFuc2Zlci1FbmNvZGluZzogcXVvdGVkLXByaW50YWJsZQoKdGVzdCB0ZXh0IGJvZHkKCgot
LV8wMDBfVFlaUFIwNE1CNjk4MTczRkQwMDIxNTJENUFEQjhGQjQ3QzhCQ0FUWVpQUjA0TUI2OTgx
YXBjcF8KQ29udGVudC1UeXBlOiB0ZXh0L2h0bWw7IGNoYXJzZXQ9Imlzby04ODU5LTEiCkNvbnRl
bnQtVHJhbnNmZXItRW5jb2Rpbmc6IHF1b3RlZC1wcmludGFibGUKCjxodG1sPgo8aGVhZD4KPC9o
ZWFkPgo8Ym9keT4KdGVzdCBodG1sIGJvZHkKPC9ib2R5Pgo8L2h0bWw+CgotLV8wMDBfVFlaUFIw
NE1CNjk4MTczRkQwMDIxNTJENUFEQjhGQjQ3QzhCQ0FUWVpQUjA0TUI2OTgxYXBjcF8tLQoKLS1f
MDA0X1RZWlBSMDRNQjY5ODE3M0ZEMDAyMTUyRDVBREI4RkI0N0M4QkNBVFlaUFIwNE1CNjk4MWFw
Y3BfCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsKQ29udGVudC1EaXNwb3NpdGlvbjogYXR0YWNo
bWVudDsKICAgICAgICBmaWxlbmFtZT0idGVzdC50eHQiCgp0aGlzIGlzIHRoZSBhdHRhY2htZW50
IHRleHQKCi0tXzAwNF9UWVpQUjA0TUI2OTgxNzNGRDAwMjE1MkQ1QURCOEZCNDdDOEJDQVRZWlBS
MDRNQjY5ODFhcGNwXy0t

```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```

If the request body includes malformed MIME content, this method returns the following error message.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
  "error": {
    "code": "ErrorMimeContentInvalidBase64String",
    "message": "Invalid base64 string for MIME content."
  }
}
```

### Example 5: Send a new message flagged for follow-up

#### Request

<!-- {
  "blockType": "ignored",
  "name": "message_send_flagged"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/sendMail
Content-type: application/json

{
  "subject": "Please respond by Friday",
  "toRecipients": [
    {
      "emailAddress": {
        "address": "meganb@contoso.com"
      }
    }
  ],
  "flag": {
    "flagStatus": "flagged",
    "startDateTime": {
      "dateTime": "2023-08-30T12:13:00",
      "timeZone": "Eastern Standard Time"
    },
    "dueDateTime": {
      "dateTime": "2023-09-01T17:00:00",
      "timeZone": "Eastern Standard Time"
    }
  }
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
```
