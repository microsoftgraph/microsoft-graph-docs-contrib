---
title: "impactedResource: removeTag (for multiple resources)"
description: "Remove the same user-defined tag from multiple impactedResource objects in a single request."
author: "sanchariroy9197"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 07/22/2026
---

# impactedResource: removeTag (for multiple resources)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the same user-defined [tag](../resources/recommendationtag.md) from multiple [impactedResource](../resources/impactedresource.md) objects in a single request. To remove a tag from a single impacted resource, use the [removeTag](../api/impactedresource-removetag.md) action instead.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "impactedresource_removetag_collection" } -->
[!INCLUDE [permissions-table](../includes/permissions/impactedresource-removetag-collection-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-write](../includes/rbac-for-apis/rbac-directory-recommendations-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /directory/recommendations/{recommendationId}/impactedResources/removeTag
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
|resourceIds|String collection|The identifiers of the [impactedResource](../resources/impactedresource.md) objects to remove the tag from. A maximum of 50 resource IDs can be supplied per request. Required.|
|displayName|String|The free-form label text of the tag to remove from each impacted resource. Required.|

If more than 50 resource IDs are supplied, the request fails with a `400 Bad Request` response and an `invalidRequest` error.

## Response

If successful, this action returns a `200 OK` response code and an [impactedResource](../resources/impactedresource.md) collection in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "impactedresourcethis.removeTag.collection",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry"]
}
-->
```http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/removeTag
Content-Type: application/json

{
    "resourceIds": [
        "dbd9935e-15b7-4800-9049-8d8704c23ad2",
        "8f421b3d-6d33-4f2a-9d6f-7c2f1a9e5b10"
    ],
    "displayName": "Q3 remediation"
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.impactedResource",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(impactedResource)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.impactedResource",
      "id": "dbd9935e-15b7-4800-9049-8d8704c23ad2",
      "recommendationId": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
      "displayName": "Contoso IWA App Tutorial"
    },
    {
      "@odata.type": "#microsoft.graph.impactedResource",
      "id": "8f421b3d-6d33-4f2a-9d6f-7c2f1a9e5b10",
      "recommendationId": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
      "displayName": "Fabrikam Web App"
    }
  ]
}
```
