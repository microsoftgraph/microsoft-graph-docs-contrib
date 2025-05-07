---
title: "Update ediscoveryReviewSet"
description: "Update the properties of a microsoft.graph.security.ediscoveryReviewSet object."
author: "manjarisenthil"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Update ediscoveryReviewSet

Namespace: microsoft.graph.security

Update the properties of a [microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-ediscoveryreviewset-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewset-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/cases/ediscoveryCases/{ediscoverycaseId}/reviewSets/{reviewSetId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of review set. Inherited from [microsoft.graph.security.dataSet](../resources/security-dataset.md). Optional.|
|description|String|The description of review set. Inherited from [microsoft.graph.security.dataSet](../resources/security-dataset.md). Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request that updates the review set name to `reviewset01` and description to `reviewset description`
<!-- {
  "blockType": "request",
  "name": "update_ediscoveryreviewset"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/security/cases/{caseId}/reviewSets/{reviewSetId}
Content-Type: application/json
{
  "displayName": "reviewset01",
  "description": "reviewset description"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
