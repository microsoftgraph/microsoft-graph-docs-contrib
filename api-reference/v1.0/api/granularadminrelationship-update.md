---
title: "Update granularAdminRelationship"
description: "Update the properties of a granularAdminRelationship object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: apiPageType
---

# Update granularAdminRelationship
Namespace: microsoft.graph



Update the properties of a [granularAdminRelationship](../resources/granularadminrelationship.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|duration|Duration|**TODO: Add Description** Required.|
|partner|[microsoft.partner.customerServiceAdministration.granularAdminRelationshipParticipant](../resources/granularadminrelationshipparticipant.md)|**TODO: Add Description** Required.|
|customer|[microsoft.partner.customerServiceAdministration.granularAdminRelationshipCustomerParticipant](../resources/granularadminrelationshipcustomerparticipant.md)|**TODO: Add Description** Optional.|
|accessDetails|[microsoft.partner.customerServiceAdministration.granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|activatedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|endDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [granularAdminRelationship](../resources/granularadminrelationship.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_granularadminrelationship"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}
Content-Type: application/json
Content-length: 529

{
  "@odata.type": "#microsoft.graph.granularAdminRelationship",
  "name": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "status": "String",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```


### Response
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
  "@odata.type": "#microsoft.graph.granularAdminRelationship",
  "id": "1e0c63f8-e144-1d2b-5986-1b13565d56af",
  "name": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

