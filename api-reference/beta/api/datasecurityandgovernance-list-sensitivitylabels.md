---
title: "List sensitivityLabels"
description: "Retrieve a comprehensive list of sensitivity labels applicable to a specific user or the entire tenant. "
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List sensitivityLabels

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API allows applications to retrieve a comprehensive list of sensitivity labels applicable to a specific user or the entire tenant. This list is essential for building label pickers in user interfaces, implementing mandatory labeling policies, and enabling users to correctly classify content within their applications. The API supports filtering by content types to provide contextually relevant labels.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "datasecurityandgovernance-list-sensitivitylabels-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/datasecurityandgovernance-list-sensitivitylabels-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /dataSecurityAndGovernance/sensitivityLabels
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

If successful, this method returns a `200 OK` response code and a collection of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_sensitivitylabel"
}
-->
``` http
GET https://graph.microsoft.com/beta/dataSecurityAndGovernance/sensitivityLabels
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
  "value": [
    {
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
  ]
}
```
