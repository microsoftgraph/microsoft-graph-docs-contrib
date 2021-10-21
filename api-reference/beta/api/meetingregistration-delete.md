---
title: "Delete meetingRegistration"
description: "Delete and disable meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Delete meetingRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Disable and delete the [meetingRegistration](../resources/meetingregistration.md) of an [onlineMeeting](../resources/onlinemeeting.md) on behalf of the organizer.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/onlineMeetings/{id}/registration
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method only returns a `204 No Content` response code.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete-registration"
}-->

```http
DELETE https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-registration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-registration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-registration-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-registration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

<!-- {
  "blockType": "response",
  "name": "delete-registration"
}-->

```http
HTTP/1.1 204 No Content
```
