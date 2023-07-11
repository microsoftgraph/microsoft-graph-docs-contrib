---
title: "Get accessPackageSubject"
description: "Get the properties of an accessPackageSubject object."
author: "aakanshanagwani"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get accessPackageSubject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an existing [accessPackageSubject](../resources/accesspackagesubject.md) object properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfUser}')
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [accessPackageSubject](../resources/accesspackagesubject.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_accesspackagesubject"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfUser}')
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageSubject"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/subjects/$entity",
    "connectedOrganizationId": null,
    "id": "120fd4a0-95a7-49d2-9389-ed6f3c025c74",
    "objectId": "a382de66-b7bb-4c30-82b7-306c6ae6a4ae",
    "altSecId": null,
    "displayName": "Accessibility Test",
    "principalName": "accessibility@contosodeb.onmicrosoft.com",
    "email": "accessibility@contosodeb.onmicrosoft.com",
    "onPremisesSecurityIdentifier": null,
    "type": "User",
    "subjectLifecycle": "governed"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get accessPackageSubject",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->