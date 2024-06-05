---
title: "Create webApplicationSegment"
description: "Create a new webApplicationSegment object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create webApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [webApplicationSegment](../resources/webapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "websegmentconfiguration-post-applicationsegments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/websegmentconfiguration-post-applicationsegments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /webSegmentConfiguration/applicationSegments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [webApplicationSegment](../resources/webapplicationsegment.md) object.

You can specify the following properties when creating a **webApplicationSegment**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|internalUrl|String|**TODO: Add Description** Optional.|
|externalUrl|String|**TODO: Add Description** Optional.|
|alternateUrl|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [webApplicationSegment](../resources/webapplicationsegment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_webapplicationsegment_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/webSegmentConfiguration/applicationSegments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webApplicationSegment",
  "internalUrl": "String",
  "externalUrl": "String",
  "alternateUrl": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webApplicationSegment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webApplicationSegment",
  "id": "15cdc651-b0fc-e299-9820-5eba4187bba4",
  "internalUrl": "String",
  "externalUrl": "String",
  "alternateUrl": "String"
}
```

