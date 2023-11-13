---
title: "Update accessPackageSubject"
description: "Update the properties of an accessPackageSubject object."
author: "aakanshanagwani"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update accessPackageSubject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [accessPackageSubject](../resources/accesspackagesubject.md) object to change the subject lifecycle.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagesubject_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagesubject-update-permissions.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfUser}')
```

## Request headers

Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
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
  "name": "update_accesspackagesubject"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/subjects(objectId='{objectIdOfUser}')
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
``` http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Update accessPackageSubject",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
