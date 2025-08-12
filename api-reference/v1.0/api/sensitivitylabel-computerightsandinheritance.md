---
title: "sensitivityLabel: computeRightsAndInheritance"
description: "Computes the rights and inheritance for sensitivity labels based on the input content and labels."
author: "kylemar"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensitivityLabel: computeRightsAndInheritance

Namespace: microsoft.graph

Computes the rights and inheritance for sensitivity labels based on the input content and labels.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sensitivitylabel_computerightsandinheritance" } -->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-computerightsandinheritance-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/dataSecurityAndGovernance/sensitivityLabels/computeRightsAndInheritance
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|delegatedUserEmail|String|The upn of the user for whom the rights and inheritance are being computed.|
|locale|String|The localization code (for example, 'en-US') to use for the inherited label content.|
|protectedContents|[protectedContent](../resources/protectedcontent.md) collection|A collection of protected content entities for which rights and inheritance are being computed.|
|supportedContentFormats|String collection|A collection of content formats (for example, `email`, `file`) to include in the rights and inheritance calculation.|

## Response

If successful, this action returns a `200 OK` response code and a [computeRightsAndInheritanceResult](../resources/computerightsandinheritanceresult.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.computerightsandinheritance"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/dataSecurityAndGovernance/sensitivityLabels/computeRightsAndInheritance
Content-Type: application/json

{
  "delegatedUserEmail": "String",
  "locale": "String",
  "protectedContents": [
    {
      "@odata.type": "microsoft.graph.protectedContent"
    }
  ],
  "supportedContentFormats": [
    "String"
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.computeRightsAndInheritanceResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.computeRightsAndInheritanceResult"
  }
}
```
