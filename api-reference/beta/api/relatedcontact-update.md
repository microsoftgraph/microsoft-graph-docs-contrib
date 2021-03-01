---
title: "Update Related Contacts of a User"
description: "Update the relatedContact collection of an educationUser object."
author: "mmast-msft"
ms.author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Update relatedContacts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [relatedContact](../resources/relatedContact.md) collection of an [educationUser](../resources/educationuser.md) object.

> [!note]
> Updating relatedContacts replaces the entire collection. It is not possible up add, remove, or update a single contact.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | EduRoster.ReadWrite.All                     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /education/users/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [relatedContact](../resources/relatedcontact.md) collection.

The following table shows the properties that are required when you update the [educationUser](../resources/educationuser.md).

| Property        | Type                                                        | Description                                    |
| :-------------- | :---------------------------------------------------------- | :--------------------------------------------- |
| relatedContacts | [relatedContact](../resources/relatedcontact.md) collection | The complete set of related contact for a user |

> [!important]
> Patching relatedContacts must be done as a distinct operation. It cannot be combined with updates to other [educationUser](../resources/educationuser.md) properties.
> For example, in order to update both `relatedContacts` and `displayName` would require two distinct requests.

## Response

If successful, this method returns a `200 OK` response code and an updated [educationUser](../resources/educationuser.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_educationuser"
}
-->

```http
PATCH https://graph.microsoft.com/beta/educationUser
Content-Type: application/json
Content-length: 408

{
  "relatedContacts": [
    {
      "displayName": "Father Time",
      "emailAddress": "father@time.com",
      "mobilePhone": "4251231234",
      "relationship": "guardian",
      "accessConsent": true
    },
    {
      "displayName": "Mother Nature",
      "emailAddress": "mother@nature.co.uk",
      "mobilePhone": "3251231234",
      "relationship": "parent",
      "accessConsent": true
    }
  ]
}
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationUser"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "4b712dc5-2dc5-4b71-c52d-714bc52d714b",
  "relatedContacts": [
      {
          "displayName": "Father Time",
          "emailAddress": "father@time.com",
          "mobilePhone": "4251231234",
          "relationship": "guardian",
          "accessConsent": true
      },
      {
          "displayName": "Mother Nature",
          "emailAddress": "mother@nature.co.uk",
          "mobilePhone": "3251231234",
          "relationship": "parent",
          "accessConsent": true
      }
  ]
}
```
