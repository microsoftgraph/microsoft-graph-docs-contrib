---
title: "Get sensitivityLabel"
description: "Read the properties and relationships of a sensitivityLabel object."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get sensitivityLabel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API is useful when applications need detailed information about a specific label, such as its name, description, color, sensitivity level, and supported content formats. By querying a label directly, applications can present users with accurate and up-to-date information about the label's properties and usage guidelines. This API is essential for building label pickers, displaying label details, and enforcing label-based policies within applications.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sensitivitylabel-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /labelContentRight/label
GET /computeRightsAndInheritanceResult/inheritedLabel
GET /dataClassification/sensitivityLabels/{sensitivityLabelId}
GET /dataSecurityAndGovernance/sensitivityLabels/{sensitivityLabelId}
GET /computeRightsAndInheritanceResult/sensitivityLabels/{sensitivityLabelId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [sensitivityLabel](../resources/security-sensitivitylabel.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabel"
}
-->
``` http
GET https://graph.microsoft.com/beta/labelContentRight/label
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
    "id": "4dab40cd-2d62-2495-4130-cb5c70493076",
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
