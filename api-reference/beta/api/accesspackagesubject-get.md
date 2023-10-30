---
title: "Get accessPackageSubject"
description: "Gets the properties of an accessPackageSubject object."
author: "aakanshanagwani"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get accessPackageSubject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of an existing [accessPackageSubject](../resources/accesspackagesubject.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagesubject_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagesubject-get-permissions.md)]

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

Don't supply a request body for this method.

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

Here's an example of the response.

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
