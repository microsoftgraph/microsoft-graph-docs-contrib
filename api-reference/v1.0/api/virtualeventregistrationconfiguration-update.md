---
title: "Update virtualEventRegistrationConfiguration"
description: "Update the properties of a virtualEventRegistrationConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventRegistrationConfiguration

Namespace: microsoft.graph



Update the properties of a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /virtualEventRegistrationConfiguration
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
|registrationWebUrl|String|**TODO: Add Description** Optional.|
|capacity|Int32|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventregistrationconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/virtualEventRegistrationConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationConfiguration",
  "registrationWebUrl": "String",
  "capacity": "Integer"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationConfiguration",
  "id": "e193a1ce-8ab0-6b93-3445-b0819e36466a",
  "registrationWebUrl": "String",
  "capacity": "Integer"
}
```

