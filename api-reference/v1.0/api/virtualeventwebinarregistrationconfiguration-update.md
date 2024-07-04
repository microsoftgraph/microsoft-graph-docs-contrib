---
title: "Update virtualEventWebinarRegistrationConfiguration"
description: "Update the properties of a virtualEventWebinarRegistrationConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventWebinarRegistrationConfiguration

Namespace: microsoft.graph



Update the properties of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinarregistrationconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinarregistrationconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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
|registrationWebUrl|String|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). Optional.|
|capacity|Int32|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). Optional.|
|isWaitlistEnabled|Boolean|**TODO: Add Description** Optional.|
|isManualApprovalEnabled|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventwebinarregistrationconfiguration"
}
-->
``` http

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
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "id": "9b69bae9-1ebc-4c1e-1ab3-a712bd4e1e3e",
  "registrationWebUrl": "String",
  "capacity": "Integer",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```

