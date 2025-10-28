---
title: "Create delegatedPermissionClassification"
description: "Create a new delegatedPermissionClassification object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create delegatedPermissionClassification

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new delegatedPermissionClassification object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-post-delegatedpermissionclassifications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-post-delegatedpermissionclassifications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/delegatedPermissionClassifications
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object.

You can specify the following properties when creating a **delegatedPermissionClassification**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|permissionId|String|**TODO: Add Description** Optional.|
|permissionName|String|**TODO: Add Description** Optional.|
|classification|permissionClassificationType|**TODO: Add Description**. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [delegatedPermissionClassification](../resources/delegatedpermissionclassification.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_delegatedpermissionclassification_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/delegatedPermissionClassifications
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedPermissionClassification",
  "permissionId": "String",
  "permissionName": "String",
  "classification": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedPermissionClassification"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedPermissionClassification",
  "id": "c1c96e48-1b5f-80fa-d1ae-713ff66df713",
  "permissionId": "String",
  "permissionName": "String",
  "classification": "String"
}
```

