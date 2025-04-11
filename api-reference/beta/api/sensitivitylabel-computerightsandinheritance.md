---
title: "sensitivityLabel: computeRightsAndInheritance"
description: "Compute user-specific usage rights and the inherited sensitivity label for specified content items."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensitivityLabel: computeRightsAndInheritance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Compute the effective sensitivity label and the specific usage rights (permissions) granted to a delegated user for one or more pieces of content, based on their currently applied labels and content formats.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sensitivitylabel-computerightsandinheritance-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-computerightsandinheritance-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /dataClassification/sensitivityLabels/computeRightsAndInheritance
POST /me/informationProtection/sensitivityLabels/computeRightsAndInheritance
POST /dataSecurityAndGovernance/sensitivityLabels/computeRightsAndInheritance
POST /me/dataSecurityAndGovernance/sensitivityLabels/computeRightsAndInheritance
POST /computeRightsAndInheritanceResult/sensitivityLabels/computeRightsAndInheritance
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

| Parameter               | Type                                                                                       | Description                                                                                                              |
| :---------------------- | :----------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------- |
| delegatedUserEmail      | String                                                                                     | Optional. The UPN of the user for whom rights are being computed. If omitted, rights for the calling identity are computed. |
| locale                  | String                                                                                     | Optional. The locale code (e.g., 'en-US') for localized properties in the response labels.                                |
| protectedContents       | [protectedContent](../resources/protectedcontent.md) collection | Required. A collection detailing the content items for which rights and inheritance should be computed (label ID, format). |
| supportedContentFormats | String collection                                                                          | Required. List of content formats supported by the calling application, used to filter relevant labels and actions.      |

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
POST https://graph.microsoft.com/beta/dataClassification/sensitivityLabels/computeRightsAndInheritance
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
