---
title: "impactedResource: addTag"
description: "Add a user-defined tag to an impactedResource object."
author: "sanchariroy9197"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 07/22/2026
---

# impactedResource: addTag
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a user-defined [tag](../resources/recommendationtag.md) to an [impactedResource](../resources/impactedresource.md) object. To add the same tag to multiple impacted resources in a single request, use the [addTag](../api/impactedresource-addtag-collection.md) action on the impactedResources collection.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "impactedresource_addtag" } -->
[!INCLUDE [permissions-table](../includes/permissions/impactedresource-addtag-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-write](../includes/rbac-for-apis/rbac-directory-recommendations-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /directory/recommendations/{recommendationId}/impactedResources/{impactedResourceId}/addTag
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|displayName|String|The free-form label text to apply to the impacted resource. All characters and Unicode (all languages) are supported. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [recommendationTag](../resources/recommendationtag.md) in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "impactedresourcethis.addTag",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry", "dbd9935e-15b7-4800-9049-8d8704c23ad2"]
}
-->
```http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/dbd9935e-15b7-4800-9049-8d8704c23ad2/addTag
Content-Type: application/json

{
    "displayName": "Q3 remediation"
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recommendationTag"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#recommendationTag",
    "@odata.type": "#microsoft.graph.recommendationTag",
    "id": "6f9a1e17-8e2f-4a2c-9f3b-1d0e5c7a2b34",
    "displayName": "Q3 remediation"
}
```
