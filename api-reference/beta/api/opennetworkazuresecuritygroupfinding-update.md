---
title: "Update openNetworkAzureSecurityGroupFinding"
description: "Update the properties of an openNetworkAzureSecurityGroupFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update openNetworkAzureSecurityGroupFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /openNetworkAzureSecurityGroupFinding
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md). Required.|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_opennetworkazuresecuritygroupfinding"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/openNetworkAzureSecurityGroupFinding
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.openNetworkAzureSecurityGroupFinding",
  "inboundPorts": {
    "@odata.type": "microsoft.graph.inboundPorts"
  }
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.openNetworkAzureSecurityGroupFinding",
  "id": "ee7aff03-e064-3aa7-bc6e-89c500070c24",
  "createdDateTime": "String (timestamp)",
  "inboundPorts": {
    "@odata.type": "microsoft.graph.inboundPorts"
  }
}
```

