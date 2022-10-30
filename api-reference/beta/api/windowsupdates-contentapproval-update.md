---
title: "Update contentApproval"
description: "Update the properties of a contentApproval object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update contentApproval
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.

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
PATCH ** Entity URI for microsoft.graph.windowsUpdates.contentApproval not found
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
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md). Optional.|
|isRevoked|Boolean|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md). Optional.|
|revokedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [complianceChange](../resources/windowsupdates-compliancechange.md). Optional.|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|**TODO: Add Description** Required.|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [contentApproval](../resources/windowsupdates-contentapproval.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_contentapproval"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.windowsUpdates.contentApproval not found
Content-Type: application/json
Content-length: 341

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)",
  "content": {
    "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
  },
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
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
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "id": "bba2a340-1e32-b5ed-186e-678e16033319",
  "createdDateTime": "String (timestamp)",
  "isRevoked": "Boolean",
  "revokedDateTime": "String (timestamp)",
  "content": {
    "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
  },
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  }
}
```

