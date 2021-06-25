---
title: "Get managementTemplate"
description: "Read the properties and relationships of a managementTemplate object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get managementTemplate
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementTemplate](../resources/managedtenants-managementtemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [managementTemplate](../resources/managedtenants-managementtemplate.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_managementtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.managedTenants.managementTemplate",
    "id": "853689d2-89d2-8536-d289-3685d2893685",
    "displayName": "String",
    "description": "String",
    "category": "String",
    "parameters": [
      {
        "@odata.type": "microsoft.graph.managedTenants.templateParameter"
      }
    ],
    "workloadActions": [
      {
        "@odata.type": "microsoft.graph.managedTenants.workloadAction"
      }
    ]
  }
}
```
