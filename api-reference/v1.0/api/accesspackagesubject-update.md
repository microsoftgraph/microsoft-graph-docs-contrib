---
title: "Update accessPackageSubject"
description: "Update the properties of an accessPackageSubject object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 06/11/2026
---

# Update accessPackageSubject

Namespace: microsoft.graph

Update an external directory user represented by an existing [accessPackageSubject](../resources/accesspackagesubject.md) object to change the subject lifecycle.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagesubject_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagesubject-update-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfExternalDirectoryUser}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|subjectLifecycle|accessPackageSubjectLifecycle|The lifecycle of the subject user, if a guest. The possible values are: `notDefined`, `notGoverned`, `governed`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_accesspackagesubject_v1"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfExternalDirectoryUser}')
Content-Type: application/json

{
  "subjectLifecycle":"governed"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
