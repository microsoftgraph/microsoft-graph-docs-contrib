---
title: "Get accessPackageSubject"
description: "Get the properties of an accessPackageSubject object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 06/11/2026
---

# Get accessPackageSubject

Namespace: microsoft.graph

Get the properties of an external directory user represented by an existing [accessPackageSubject](../resources/accesspackagesubject.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagesubject_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagesubject-get-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfExternalDirectoryUser}')
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [accessPackageSubject](../resources/accesspackagesubject.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_accesspackagesubject_v1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfExternalDirectoryUser}')
```

### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/subjects/$entity",
    "id": "120fd4a0-95a7-49d2-9389-ed6f3c025c74",
    "objectId": "a382de66-b7bb-4c30-82b7-306c6ae6a4ae",
    "displayName": "Accessibility Test",
    "principalName": "accessibility@contoso.com",
    "email": "accessibility@contoso.com",
    "onPremisesSecurityIdentifier": null,
    "subjectType": "user",
    "subjectLifecycle": "governed"
}
```
