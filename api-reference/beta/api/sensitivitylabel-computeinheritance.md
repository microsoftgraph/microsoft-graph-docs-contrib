---
title: "sensitivityLabel: computeInheritance"
description: "Compute the effective sensitivity label for an item based on its parent container's label."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensitivityLabel: computeInheritance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In scenarios where new data is derived or generated from existing labeled data, it's crucial to automatically assign an appropriate sensitivity label to the newly created content. This process, known as Label Inheritance, ensures that derived data inherits the appropriate level of protection and governance from its sources. The Compute Label Inheritance API automates this process. Given a set of sensitivity labels associated with input data (e.g., documents used as sources), this API determines the most restrictive or highest priority label from the input set. This inherited label is then intended to be applied to the output or derived data, ensuring that it is classified and protected at a level commensurate with the sensitivity of its most sensitive source.
The API also considers content format compatibility, ensuring the returned inherited label is valid for the intended output content type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sensitivitylabel-computeinheritance-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-computeinheritance-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /dataClassification/sensitivityLabels/computeInheritance
GET /me/informationProtection/sensitivityLabels/computeInheritance
GET /dataSecurityAndGovernance/sensitivityLabels/computeInheritance
GET /me/dataSecurityAndGovernance/sensitivityLabels/computeInheritance
GET /computeRightsAndInheritanceResult/sensitivityLabels/computeInheritance
GET /security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance
```

## Function parameters

In the request URL, provide the following query parameters with values.

| Parameter      | Type              | Description                                                                                                   |
| :------------- | :---------------- | :------------------------------------------------------------------------------------------------------------ |
| labelIds       | String collection | Required. A comma-separated list of sensitivity label IDs involved in the inheritance calculation (e.g., parent label ID, potential child label ID). |
| locale         | String            | Optional. The locale code (e.g., 'en-US') used for localized properties of the resulting inherited label.       |
| contentFormats | String collection | Optional. A comma-separated list of content formats (e.g., "Email", "File") to filter the inheritance logic. |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [sensitivityLabel](../resources/security-sensitivitylabel.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.computeinheritance"
}
-->
``` http
GET https://graph.microsoft.com/beta/dataClassification/sensitivityLabels/computeInheritance(labelIds=[
  "String"
],locale='parameterValue',contentFormats=[
  "String"
])
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sensitivityLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.sensitivityLabel",
    "id": "String (identifier)",
    "name": "String",
    "displayName": "String",
    "description": "String",
    "toolTip": "String",
    "isEnabled": "Boolean",
    "isEndpointProtectionEnabled": "Boolean",
    "isDefault": "Boolean",
    "applicationMode": "String",
    "labelActions": [
      {
        "@odata.type": "microsoft.graph.encryptWithUserDefinedRights"
      }
    ],
    "assignedPolicies": [
      {
        "@odata.type": "microsoft.graph.labelPolicy"
      }
    ],
    "priority": "Integer",
    "autoLabeling": {
      "@odata.type": "microsoft.graph.autoLabeling"
    },
    "applicableTo": "String",
    "color": "String",
    "customSettings": [
      {
        "@odata.type": "microsoft.graph.keyValuePair"
      }
    ],
    "autoTooltip": "String",
    "locale": "String",
    "isScopedToUser": "Boolean",
    "actionSource": "String"
  }
}
```
